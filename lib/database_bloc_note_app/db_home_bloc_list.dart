
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/database_bloc_note_app/db_helper_bloc.dart';
import 'package:learning_flutter_wigdets/database_bloc_note_app/db_list_bloc.dart';
import 'package:learning_flutter_wigdets/database_bloc_note_app/db_list_bloc_event.dart';
import 'package:learning_flutter_wigdets/database_bloc_note_app/db_list_bloc_model.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_event.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_state.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/staggerGrid.dart';

import 'db_list_bloc_state.dart';

void main ()
{
  runApp(BlocProvider(create: (context)=> DbListBloc(DbHelperBloc.getsInstances()),child: DBhomeFirstPage(),));
  //runApp(DBhomeFirstPage());
}

class DBhomeFirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DBhomeSecondPage(),
      //home: BlocProvider(create: (context)=> DbListBloc(DbHelperBloc.getsInstances(),),child: DBhomeSecondPage(),),
    );
  }
}
class DBhomeSecondPage extends StatefulWidget
{
  @override
  State<DBhomeSecondPage> createState() => _DBhomeSecondPageState();
}

class _DBhomeSecondPageState extends State<DBhomeSecondPage> {

  TextEditingController TitleControl = TextEditingController();
  TextEditingController DescControl = TextEditingController();

  TextEditingController updateTitleControl = TextEditingController();
  TextEditingController updateDescControl = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<DbListBloc>().add(FetchAllNotesEvent());
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: BlocBuilder<DbListBloc,DBListBlocState>
        (builder: (ctx,state)
      {
        var allNotes = state.mNotes;
        return allNotes.isNotEmpty ?
        ListView.builder
          (
            itemCount: allNotes.length,
            itemBuilder: (_,index)
            {
              return ListTile(
                leading: Text(allNotes[index].noteBlocId.toString()),
                title: Text(allNotes[index].titleBloc),
                subtitle: Text(allNotes[index].descBloc),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    IconButton(onPressed: ()
                    {
                      updateTitleControl.text = allNotes[index].titleBloc;
                      updateDescControl.text = allNotes[index].descBloc;
                      showModalBottomSheet(
                          context: context,
                          builder: (_){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Update Title",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                             SizedBox(height: 10,),
                             TextField(
                               keyboardType: TextInputType.text,
                               controller: updateTitleControl,
                               decoration: InputDecoration(
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(21),
                                 ),
                                 enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(21),
                                 ),
                               ),
                             ),
                              SizedBox(height: 20,),

                              TextField(
                                keyboardType: TextInputType.text,
                                controller: updateDescControl,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                ),
                              ),

                              ElevatedButton(onPressed: ()
                              async{
                                  context.read<DbListBloc>().add(UpdateItemsEvent(updateModels: DbListBlocModel(titleBloc: updateTitleControl.text, descBloc: updateDescControl.text, noteBlocId: allNotes[index].noteBlocId)));

                                Navigator.pop(context);
                              },
                                  child: Text("save")),

                            ],
                          ),
                        );
                      });
                    },
                        icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()
                    {
                      context.read<DbListBloc>().add(DeleteItemsEvent(noteBlocId: allNotes[index].noteBlocId));
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
              );
            }) : Center(child: Text("No Notes yet"),);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {

          showModalBottomSheet(context: context, builder: (_){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Add Title",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                  SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.text,
                    controller: TitleControl,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextField(
                    keyboardType: TextInputType.text,
                    controller: DescControl,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                    ),
                  ),

                  ElevatedButton(onPressed: ()
                  {
                    context.read<DbListBloc>().add(AddItemsEvent(newModels: DbListBlocModel(titleBloc: TitleControl.text, descBloc: DescControl.text)));
                   // context.read<DbListBloc>().add(FetchAllNotesEvent());
                    Navigator.pop(context);
                  },
                      child: Text("save")),

                ],
              ),
            );
          });
        },
        child: Icon(Icons.add),
        tooltip: "Add Notes",
      ),
    );
  }
}

