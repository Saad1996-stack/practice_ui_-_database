import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_model.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_cubit_state.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';

class ListCubit extends Cubit<ListState>
{
  ListCubit() : super(ListState(mData: []));

  addNote({required String title, required String desc})
  {
    var currentStateValue = state.mData;
    currentStateValue..add(ListCubitModel(title: title, desc: desc));
    emit(ListState(mData: currentStateValue));
  }

  updateNote({required int index, required String updateTitle, required String updateDesc})
  {
    var currentStateValue = state.mData;
    currentStateValue[index] = (ListCubitModel(title: updateTitle, desc: updateDesc));
    emit(ListState(mData: currentStateValue));
  }

  deleteNote({required int index})
  {
    var currentStateValue = state.mData;
    currentStateValue.removeAt(index);
    emit(ListState(mData: currentStateValue));
  }
}