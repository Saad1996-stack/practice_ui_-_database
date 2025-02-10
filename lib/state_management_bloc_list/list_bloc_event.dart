import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';

abstract class ListBlocEvent {}

class AddItemEvent extends ListBlocEvent
{
  ListBlocModel newModel;
  AddItemEvent({required this.newModel});
}

class UpdateItemEvent extends ListBlocEvent
{
  ListBlocModel updateModel;
  int index;
  UpdateItemEvent({required this.updateModel, required this.index});
}

class DeleteItemEvent extends ListBlocEvent
{
  int index;
  DeleteItemEvent({required this.index});
}