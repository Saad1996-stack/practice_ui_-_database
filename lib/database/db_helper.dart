import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'note_model.dart';

class DBHelper
{
  ///TABLE NAME
  static const String TABLE_NOTE = "note";

  ///COLUMN NAME
  static const String COLUMN_NOTE_ID = "note_id";
  static const String COLUMN_NOTE_TITLE = "note_title";
  static const String COLUMN_NOTE_DESC = "note_desc";

  DBHelper._();
  static DBHelper getInstance() => DBHelper._();

  Database? mDB;

  Future<Database>getDB()
  async{
    return mDB ?? await openDB();
    // if(mdb!= null)
    //   {
    //     return mdb!;
    //   }
    // else
    //   {
    //     mdb = await openDB();
    //     return mdb!;
    //   }
  }

  Future<Database>openDB()
  async{
    var appDir = await getApplicationSupportDirectory();
    String dbPath = join(appDir.path, "mainDB.db");

    return await openDatabase(dbPath, version: 1, onCreate: (db, version){

      db.execute("create table $TABLE_NOTE ( $COLUMN_NOTE_ID integer primary key autoincrement, $COLUMN_NOTE_TITLE text, $COLUMN_NOTE_DESC text )");
    });
  }

  ///queries

  Future<bool> addNote({required NotesModel newNote})
  async{
    var db = await getDB();
    int rowsEffected = await db.insert(TABLE_NOTE, newNote.toMap());
    return rowsEffected>0;
  }

 Future<List<NotesModel>>fetchAllNotes()
 async{
   var db = await getDB();
   List<Map<String,dynamic>> mData = await db.query(TABLE_NOTE);
   List<NotesModel> mNotes = [];
   for(int i=0; i<mData.length; i++)
     {
       NotesModel eachNote = NotesModel.fromMap(mData[i]);
       mNotes.add(eachNote);
     }
   return mNotes;
 }

 Future<bool>updateNote({required NotesModel updateNote})
 async{
   var db = await getDB();
   int rowsEffected = await db.update(TABLE_NOTE, updateNote.toMap(),
   where: "$COLUMN_NOTE_ID = ${updateNote.id}");
   return rowsEffected>0;
 }

  Future<bool>deleteNote({required int id})
  async{
    var db = await getDB();
    int rowsEffected = await db.delete("$TABLE_NOTE", where: "$COLUMN_NOTE_ID = $id");
    return rowsEffected>0;
  }

}