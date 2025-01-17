import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/database/db_helper.dart';

import 'note_model.dart';

class addNote extends StatelessWidget
{
  TextEditingController titleController = TextEditingController();
  TextEditingController descController  = TextEditingController();
  DBHelper dbHelper = DBHelper.getInstance();

  @override
  Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: Text("Add Note"),
      centerTitle: true,
    ),
    body: Container(
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
    ),
  );
  }
}
