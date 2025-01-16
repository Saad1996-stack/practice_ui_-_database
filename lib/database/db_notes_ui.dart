import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/database/note_model.dart';
import 'db_helper.dart';

void main() {
  runApp(dbUi());
}

class dbUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dbNoteUi(),
    );
  }
}

class dbNoteUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => dbNotesUi();
}

class dbNotesUi extends State<dbNoteUi> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  TextEditingController updateTitleController = TextEditingController();
  TextEditingController updateDescController  = TextEditingController();

  List<NotesModel>mNotes = [];
  DBHelper dbHelper = DBHelper.getInstance();

  @override
  void initState() {
    super.initState();
    getNotes();
  }

  getNotes() async {
    mNotes = await dbHelper.fetchAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: mNotes.isNotEmpty
          ? ListView.builder(
              itemCount: mNotes.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Text("${index + 1}"),
                  title: Text(mNotes[index].title),
                  subtitle: Text(mNotes[index].desc),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () async {
                              updateTitleController.text = "";
                              updateDescController.clear();
                              showModalBottomSheet(
                                  context: context,
                                  builder: (_) {
                                    return Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Update Note",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 11,
                                            ),
                                            TextField(
                                              controller: updateTitleController,
                                              decoration: InputDecoration(
                                                  label: Text("Update Title"),
                                                  hintText:
                                                      "Update Title Here...",
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            21),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: 11,
                                            ),
                                            TextField(
                                              controller: updateDescController,
                                              minLines: 4,
                                              maxLines: 6,
                                              decoration: InputDecoration(
                                                label: Text("Update Desc"),
                                                hintText: "Update Desc Here...",
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(21),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(21),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 11,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                OutlinedButton(
                                                    onPressed: ()
                                                    async{
                                                      bool check = await dbHelper.updateNote(updateNote: NotesModel(title: updateTitleController.text, desc: updateDescController.text, id: mNotes[0].id));
                                                      if(check)
                                                        {
                                                          getNotes();
                                                          Navigator.pop(context);
                                                        }
                                                    },
                                                    child: Text("Update")),
                                                OutlinedButton(
                                                    onPressed: ()
                                                    {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Cancel")),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            onPressed: () async {
                              bool check = await dbHelper.deleteNote(
                                  id: mNotes[index].id);
                              if (check) {
                                getNotes();
                              }
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      ],
                    ),
                  ),
                );
              })
          : Center(
              child: Text("No yet notes"),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          titleController.clear();
          descController.text = "";
          showModalBottomSheet(

              ///BottomSheet will not clickable
              // isDismissible: false,

              ///BottomSheet will not drag
              // enableDrag: false,

              ///full screen of bottomSheet, but, you have to give height in Container
              //isScrollControlled: true,

              context: context,
              builder: (_) {
                return Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Add Notes",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            label: Text("Note Title"),
                            hintText: "Enter Note Title",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        TextField(
                          controller: descController,
                          minLines: 4,
                          maxLines: 6,
                          decoration: InputDecoration(
                            label: Text("Note Desc"),
                            hintText: "Enter Note Desc Here...",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () async {
                               bool check = await dbHelper.addNote(newNote: NotesModel(title: titleController.text, desc: descController.text));
                                if (check) {
                                  getNotes();
                                  Navigator.pop(context);
                                }
                              },
                              child: Text("Add"),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cancel"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
