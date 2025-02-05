import 'db_helper_cubit.dart';

class ListCubitModel {
  int noteCubitId;
  String titleCubit;
  String descCubit;

  ListCubitModel({required this.titleCubit, required this.descCubit, this.noteCubitId = 0});

  factory ListCubitModel.fromMap(Map<String, dynamic> map) {
    return ListCubitModel(
      noteCubitId: map[DBHelperCubit.COLUMN_NAME_NOTE_ID],
      titleCubit: map[DBHelperCubit.COLUMN_NAME_NOTE_TITLE],
      descCubit: map[DBHelperCubit.COLUMN_NAME_NOTE_DESC],
    );
  }

  Map<String,dynamic>toMap()
  {
    return {
      DBHelperCubit.COLUMN_NAME_NOTE_TITLE : titleCubit,
      DBHelperCubit.COLUMN_NAME_NOTE_DESC  : descCubit,
    };
  }

}
