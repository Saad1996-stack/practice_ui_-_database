import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_map_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';
import 'package:provider/provider.dart';

class AddNoteCubit extends StatelessWidget
{
  TextEditingController addTitleController = TextEditingController();
  TextEditingController addDescController  = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: addTitleController,
              decoration: InputDecoration(
                label: Text("Enter Title..."),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              minLines: 3,
              maxLines: 6,
              keyboardType: TextInputType.number,
              controller: addDescController,
              decoration: InputDecoration(
                label: Text("Enter description..."),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: ()
                {
                  BlocProvider.of<ListCubit>(context, listen: false).addNote(listCubitModel: ListCubitModel(titleCubit: addTitleController.text, descCubit: addDescController.text));
                  Navigator.pop(context);
                },
                    child: Text("Add")),

                ElevatedButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Text("Cancel")),
              ],
            ),


          ],
        ),
      ),
    );
  }

}