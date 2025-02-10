import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';

import 'db_list_bloc_model.dart';

abstract class DBListBlocEvent {}

class FetchAllNotesEvent extends DBListBlocEvent {}

class AddItemsEvent extends DBListBlocEvent
{
  DbListBlocModel newModels;
  AddItemsEvent({required this.newModels});
}

class UpdateItemsEvent extends DBListBlocEvent
{
  DbListBlocModel updateModels;
  UpdateItemsEvent({required this.updateModels});
}

class DeleteItemsEvent extends DBListBlocEvent
{
  int noteBlocId;
  DeleteItemsEvent({required this.noteBlocId});
}