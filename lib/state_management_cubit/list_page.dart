import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/add_note_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_cubit_state.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_map_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ListCubit(),
    child: noteListPage(),
  ));
}

class noteListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "List Notes Cubit ",
        home: noteList());
  }
}

class noteList extends StatelessWidget {
  TextEditingController updateTitleController = TextEditingController();
  TextEditingController updateDescController = TextEditingController();

  List<ListCubitModel> mNotes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes List Cubit"),
      ),
      body: BlocBuilder<ListCubit, ListState>(
        builder: (ctx, state) {
          mNotes = ctx.watch<ListCubit>().state.mData;
          return mNotes.isNotEmpty
              ? ListView.builder(
                  itemCount: mNotes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(mNotes[index].title),
                      subtitle: Text(mNotes[index].desc),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                updateTitleController.text = mNotes[index].title ?? "";
                                updateDescController.text = mNotes[index].desc ?? "";
                                showModalBottomSheet(
                                    context: context,
                                    builder: (_) {
                                      return Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                "Update Title",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              TextField(
                                                keyboardType:
                                                    TextInputType.text,
                                                controller:
                                                    updateTitleController,
                                                decoration: InputDecoration(
                                                  label: Text(
                                                      "Enter Update Title..."),
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
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              TextField(
                                                minLines: 3,
                                                maxLines: 6,
                                                keyboardType:
                                                    TextInputType.text,
                                                controller:
                                                    updateDescController,
                                                decoration: InputDecoration(
                                                  label: Text(
                                                      "Enter Update Description..."),
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
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        BlocProvider.of<
                                                                    ListCubit>(
                                                                context,
                                                                listen: false)
                                                            .updateNote(
                                                                index: index,
                                                                updateTitle:
                                                                    updateTitleController
                                                                        .text,
                                                                updateDesc:
                                                                    updateDescController
                                                                        .text);
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text("Update")),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text("Cancel"))
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              /*  FloatingActionButton(
                                  onPressed: () {},
                                );*/
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<ListCubit>()
                                    .deleteNote(index: index);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              )),
                        ],
                      ),
                    );
                  })
              : Center(
                  child: Text(
                    "No notes yet",
                    style: TextStyle(fontSize: 20),
                  ),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddNoteCubit()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
