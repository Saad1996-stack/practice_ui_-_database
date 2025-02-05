import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelperCubit
{

  ///TABLE NAME

  static const String TABLE_NAME_NOTE = "table_note";

  ///COLUMN NAMES

  static const String COLUMN_NAME_NOTE_ID = "note_id_cubit";
  static const String COLUMN_NAME_NOTE_TITLE = "note_title";
  static const String COLUMN_NAME_NOTE_DESC = "note_desc";

  DBHelperCubit._();
  static DBHelperCubit getInstances() => DBHelperCubit._();


  Database? cubitDB;

  getDBCubit()
  async
  {
    return cubitDB ?? await openDBCubit();
  }

  Future<Database>openDBCubit()
  async{
    var appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path, "mainDB.db");

    return await openDatabase(dbPath, version: 1, onCreate: (db, version){
      db.execute("create table $TABLE_NAME_NOTE ( $COLUMN_NAME_NOTE_ID integer primary key autoincrement, $COLUMN_NAME_NOTE_TITLE text, $COLUMN_NAME_NOTE_DESC text ) ");
    });
  }

  Future<bool>addNoteCubit({required ListCubitModel newListCubitModel})
  async{
    var dataBase = await openDBCubit();
    int rowsEffected = await dataBase.insert(TABLE_NAME_NOTE, newListCubitModel.toMap());
    return rowsEffected>0;
  }

  Future<List<ListCubitModel>>fetchAllNotesCubit()
  async{
    var database = await openDBCubit();
    List<Map<String,dynamic>>myData = await database.query(TABLE_NAME_NOTE);
    List<ListCubitModel>myNotes = [];

    for(int i=0; i<myData.length; i++)
      {
        ListCubitModel eachCubitNote = ListCubitModel.fromMap(myData[i]);
        myNotes.add(eachCubitNote);
      }
    return myNotes;
  }

  Future<bool>updateNotesCubit({required ListCubitModel updateListCubitModel})
  async{
    var database = await openDBCubit();
    int rowsEffected = await database.update(TABLE_NAME_NOTE, updateListCubitModel.toMap(),
        where: "$COLUMN_NAME_NOTE_ID = ${updateListCubitModel.noteCubitId}"
    );
    return rowsEffected>0;
  }

  Future<bool>deleteNotesCubit({required int noteCubitId})
  async{
    var database = await openDBCubit();
    int rowsEffected = await database.delete(TABLE_NAME_NOTE,where: "$COLUMN_NAME_NOTE_ID = $noteCubitId");
    return rowsEffected>0;
  }
}