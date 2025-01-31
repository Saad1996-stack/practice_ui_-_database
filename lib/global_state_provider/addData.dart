import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_model.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_provider.dart';
import 'package:provider/provider.dart';

class addData extends StatelessWidget
{
  TextEditingController addTitleController = TextEditingController();
  TextEditingController addPriceController = TextEditingController();

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
                label: Text("Enter Title"),
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
              keyboardType: TextInputType.number,
              controller: addPriceController,
              decoration: InputDecoration(
                label: Text("Enter Price"),
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
            ElevatedButton(onPressed: ()
            {
              Provider.of<ListProvider>(context, listen: false).addData(newListModel: ListModel(title: addTitleController.text, price: addPriceController.text));
              Navigator.pop(context);
            },
                child: Text("Add")),
          ],
        ),
      ),
    );
  }
}
