import 'package:learning_flutter_wigdets/database/db_helper.dart';

class NotesModel
{
  int id;
  String title;
  String desc;

  NotesModel({this.id = 0, required this.title, required this.desc});

  factory NotesModel.fromMap(Map<String,dynamic>map)
  {
    return NotesModel(
        id:    map[DBHelper.COLUMN_NOTE_ID],
        title: map[DBHelper.COLUMN_NOTE_TITLE],
        desc: map[DBHelper.COLUMN_NOTE_DESC],
    );
  }

  Map<String,dynamic>toMap()
  {
    return
        {
          DBHelper.COLUMN_NOTE_TITLE : title,
          DBHelper.COLUMN_NOTE_DESC  : desc,
        };
  }
}