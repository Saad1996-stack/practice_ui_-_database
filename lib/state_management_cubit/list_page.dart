import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/add_note_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/db_helper_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_cubit_state.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_map_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';

void main() {
 runApp(BlocProvider(create: (context)=> ListCubit(DBHelperCubit.getInstances()),child: noteListPage(),));
}

class noteListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "List Notes Cubit ",
      home: noteList(),
    );
  }
}

class noteList extends StatefulWidget {
  @override
  State<noteList> createState() => _noteListState();
}

class _noteListState extends State<noteList>
{

  TextEditingController updateTitleController = TextEditingController();
  TextEditingController updateDescController = TextEditingController();

  List<ListCubitModel> mNotes = [];

  //DBHelperCubit dbHelperCubit = DBHelperCubit.getInstances();

  @override
  void initState() {
    super.initState();
    context.read<ListCubit>().fetchInitialNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes List Cubit"),
      ),
      body: BlocBuilder<ListCubit, ListState>(
        builder: (ctx, state)
        {
          mNotes = state.mData;
          //mNotes = ctx.watch<ListCubit>().fetchInitialNotes();
          return mNotes.isNotEmpty
              ? ListView.builder(
                  itemCount: mNotes.length,
                  itemBuilder: (ctx, index)
                  {
                    return ListTile(
                      title: Text(mNotes[index].titleCubit),
                      subtitle: Text(mNotes[index].descCubit),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                updateTitleController.text = mNotes[index].titleCubit ?? "";
                                updateDescController.text = mNotes[index].descCubit ?? "";
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
                                                        BlocProvider.of<ListCubit>(context, listen: false).updateNote(listCubitModel: ListCubitModel(titleCubit: updateTitleController.text, descCubit: updateDescController.text, noteCubitId: mNotes[index].noteCubitId));
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
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                context.read<ListCubit>().deleteNote(noteCubitId: mNotes[index].noteCubitId);
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
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddNoteCubit()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
