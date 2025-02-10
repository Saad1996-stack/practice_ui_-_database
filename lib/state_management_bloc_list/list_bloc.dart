import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_event.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_state.dart';

class ListBloc extends Bloc<ListBlocEvent, ListBlocState>
{
  ListBloc()  : super(ListBlocState(mNotes: [])){

    on<AddItemEvent>((event, emit){
      List<ListBlocModel> currentStateValue = state.mNotes;
      currentStateValue.add(event.newModel);
      emit(ListBlocState(mNotes: currentStateValue));
    });

    on<UpdateItemEvent>((event, emit){
      List<ListBlocModel>currentStateValue = state.mNotes;
      currentStateValue[event.index] = event.updateModel;
      emit(ListBlocState(mNotes: currentStateValue));
    });

    on<DeleteItemEvent>((event, emit){
      List<ListBlocModel>currentStateValue = state.mNotes;
      currentStateValue.removeAt(event.index);
      emit(ListBlocState(mNotes: currentStateValue));
    });
  }
}