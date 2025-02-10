import 'package:learning_flutter_wigdets/database_bloc_note_app/db_list_bloc.dart';

import 'db_helper_bloc.dart';

class DbListBlocModel
{
  int noteBlocId;
  String titleBloc;
  String descBloc;

  DbListBlocModel({required this.titleBloc, required this.descBloc, this.noteBlocId = 0});

  factory DbListBlocModel.fromMap(Map<String,dynamic>map)
  {
    return DbListBlocModel(
      noteBlocId: map[DbHelperBloc.COLUMN_NOTE_ID_BLOC],
      titleBloc: map[DbHelperBloc.COLUMN_TITLE_NAME_BLOC],
      descBloc: map[DbHelperBloc.COLUMN_DESC_NAME_BLOC],
    );
  }

  Map<String,dynamic>toMap()
  {
    return {
      DbHelperBloc.COLUMN_TITLE_NAME_BLOC : titleBloc,
      DbHelperBloc.COLUMN_DESC_NAME_BLOC  : descBloc,
    };
  }

}