import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_model.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class updateData extends StatelessWidget
{
  final int index;
  updateData({required this.index});

  TextEditingController updateTitleController = TextEditingController();
  TextEditingController updatePriceController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: updateTitleController,
              decoration: InputDecoration(
                label: Text("Update Title"),
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
              controller: updatePriceController,
              decoration: InputDecoration(
                label: Text("Update Price"),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              //Provider.of<ListProvider>(context, listen: false).updateData(index: index, title: updateTitleController.text, price: int.parse(updatePriceController.text));
              context.read<ListProvider>().updateData(index: index, updateListModel: ListModel(title: updateTitleController.text, price: updatePriceController.text));
              Navigator.pop(context);
            },
                child: Text("Update")),
          ],
        ),
      ),
    );
  }
}
