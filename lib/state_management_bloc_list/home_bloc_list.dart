import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_event.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_state.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/staggerGrid.dart';
import 'package:path/path.dart';

void main ()
{
  runApp(BlocProvider(create: (context)=> ListBloc(),child: homeFirstPage(),));
}

class homeFirstPage extends StatelessWidget {
  const homeFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeSecondPage(),
    );
  }
}
class homeSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListBloc,ListBlocState>
        (builder: (ctx,state){
        return state.mNotes.isNotEmpty ?
        ListView.builder
          (
            itemCount: state.mNotes.length,
            itemBuilder: (ctx,index)
            {
              return ListTile(
                title: Text(state.mNotes[index].title),
                subtitle: Text(state.mNotes[index].desc),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: ()
                    {
                      context.read<ListBloc>().add(UpdateItemEvent(updateModel: ListBlocModel(title: "Mac", desc: "Khan"), index: index));
                    },
                        icon: Icon(Icons.edit)),
                    IconButton(onPressed: ()
                    {
                      context.read<ListBloc>().add(DeleteItemEvent(index: index));
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
              ) ;
            }) : Center(child: Text("No Notes yet"),);
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          context.read<ListBloc>().add(AddItemEvent(newModel: ListBlocModel(title: "1st Note", desc: "This is the task")));
        },
        child: Icon(Icons.add),
        tooltip: "Add Notes",
      ),
    );
  }
}

