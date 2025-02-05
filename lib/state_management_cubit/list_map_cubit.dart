import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/global_state_provider/list_model.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/db_helper_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_cubit_state.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/list_model.dart';

class ListCubit extends Cubit<ListState>
{


  final DBHelperCubit dbHelperCubit;
  ListCubit(this.dbHelperCubit) : super(ListState(mData: []));

  Future<void>addNote({required ListCubitModel listCubitModel})
  async{
    ///get data from model class
/*    var currentStateValue = state.mData;
    currentStateValue.add(ListCubitModel(titleCubit: titleCubit, descCubit: desc));
    emit(ListState(mData: currentStateValue));*/

      bool check = await dbHelperCubit.addNoteCubit(newListCubitModel: listCubitModel);
      if(check)
        {
          final listCubitModel = await dbHelperCubit.fetchAllNotesCubit();
          emit(ListState(mData: listCubitModel));
        }

  }

  Future<void>fetchInitialNotes()
  async{
    final listCubitModel = await dbHelperCubit.fetchAllNotesCubit();
    emit(ListState(mData: listCubitModel));
  }
  
  Future<void> updateNote({required ListCubitModel listCubitModel})
  async{
    bool check = await dbHelperCubit.updateNotesCubit(updateListCubitModel: listCubitModel);
    if(check)
      {
        final listCubitModel = await dbHelperCubit.fetchAllNotesCubit();
        emit(ListState(mData: listCubitModel));
      }
  }

  ///get data from model class
  /*updateNote({required int index, required String updateTitle, required String updateDesc})
  {
    var currentStateValue = state.mData;
    currentStateValue[index] = (ListCubitModel(titleCubit: updateTitle, descCubit: updateDesc));
    emit(ListState(mData: currentStateValue));
  }*/


  Future<void>deleteNote({required int noteCubitId})
  async{
    bool check = await dbHelperCubit.deleteNotesCubit(noteCubitId: noteCubitId);
    if(check)
      {
        final listCubitModel = await dbHelperCubit.fetchAllNotesCubit();
        emit(ListState(mData: listCubitModel));
      }
  }

  ///get data from model class
 /* deleteNote({required int index})
  {
    var currentStateValue = state.mData;
    currentStateValue.removeAt(index);
    emit(ListState(mData: currentStateValue));
  }*/

}