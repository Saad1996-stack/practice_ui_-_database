import 'package:flutter/cupertino.dart';
import 'package:learning_flutter_wigdets/bmi_calculate/bmi_ui.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../state_management_bloc_list/list_bloc_model.dart';
import 'db_list_bloc_model.dart';


class DbHelperBloc
{
  ///TABLE NAME
  static const String TABLE_NAME_BLOC = "note_bloc";

  ///COLUMN NAME
  static const String COLUMN_NOTE_ID_BLOC    = "note_id_bloc";
  static const String COLUMN_TITLE_NAME_BLOC = "title_bloc";
  static const String COLUMN_DESC_NAME_BLOC  = "desc_bloc";

  DbHelperBloc._();
  static DbHelperBloc getsInstances() => DbHelperBloc._();

  Database? blocDB;

  Future<Database>getDBBloc()
  async{
    return blocDB ?? await openDBBloc();
  }

  Future<Database>openDBBloc()
  async{
    var appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, "mainDB.db");

    return await openDatabase(dbPath, version: 1, onCreate: (db, version){
      db.execute(" create table $TABLE_NAME_BLOC ( $COLUMN_NOTE_ID_BLOC integer primary key autoincrement, $COLUMN_TITLE_NAME_BLOC text, $COLUMN_DESC_NAME_BLOC text )");
    });
  }

  Future<bool>addNoteBloc({required DbListBlocModel newDbListBlocModel})
  async{
    var db = await getDBBloc();
    int rowsEffected = await db.insert(TABLE_NAME_BLOC, newDbListBlocModel.toMap());
    return rowsEffected > 0;
  }

  Future<List<DbListBlocModel>>fetchAllNotesBloc()
  async{
      var db = await getDBBloc();
      List<Map<String,dynamic>>myData = await db.query(TABLE_NAME_BLOC);
      List<DbListBlocModel>myNotes = [];

      for(int i=0; i<myData.length; i++)
        {
          DbListBlocModel eachListBlocNote = DbListBlocModel.fromMap(myData[i]);
          myNotes.add(eachListBlocNote);
        }
      return myNotes;
  }

  Future<bool>updateAllNotesBloc({required DbListBlocModel updateDbListBlocModel})
  async{
    var db = await getDBBloc();
    int rowsEffected = await db.update(TABLE_NAME_BLOC, updateDbListBlocModel.toMap(),
     where: "$COLUMN_NOTE_ID_BLOC = ${updateDbListBlocModel.noteBlocId}"
    );
    return rowsEffected>0;
  }


  Future<bool>deleteAllNotesBloc({required int noteBlocId})
  async{
    var db = await getDBBloc();
    int rowsEffected = await db.delete(TABLE_NAME_BLOC,
         where: "$COLUMN_NOTE_ID_BLOC = $noteBlocId",
    );
    return rowsEffected > 0;
  }
}