import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/database/add_note_page.dart';
import 'package:learning_flutter_wigdets/global_state_provider/updateData.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_event.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_model.dart';
import 'package:learning_flutter_wigdets/state_management_bloc_list/list_bloc_state.dart';

import 'db_helper_bloc.dart';
import 'db_list_bloc_event.dart';
import 'db_list_bloc_model.dart';
import 'db_list_bloc_state.dart';


class DbListBloc extends Bloc<DBListBlocEvent, DBListBlocState>
{
  final DbHelperBloc dbHelperBloc;

  DbListBloc(this.dbHelperBloc)  : super(DBListBlocState(mNotes: [])){

    on<FetchAllNotesEvent>((event, emit)
    async{
      final currentStateValue = await dbHelperBloc.fetchAllNotesBloc();
      emit(DBListBlocState(mNotes: currentStateValue));


    });

    on<AddItemsEvent>((event,emit)async{
      bool check = await dbHelperBloc.addNoteBloc(newDbListBlocModel: event.newModels);
      if(check)
        {
          final currentStateValue = await dbHelperBloc.fetchAllNotesBloc();
          emit(DBListBlocState(mNotes: currentStateValue));
        }
    });


    on<UpdateItemsEvent>((event, emit) async {
      bool check = await dbHelperBloc.updateAllNotesBloc(updateDbListBlocModel: event.updateModels);
      if (check) {
        // Fetch fresh notes after successful update
        final updatedNotes = await dbHelperBloc.fetchAllNotesBloc();
        emit(DBListBlocState(mNotes: updatedNotes)); // Emit the new state with updated notes
      }
    });

    on<DeleteItemsEvent>((event,emit)async{
      bool check = await dbHelperBloc.deleteAllNotesBloc(noteBlocId: event.noteBlocId);
      if(check)
        {
          final currentStateValue = await dbHelperBloc.fetchAllNotesBloc();
          emit(DBListBlocState(mNotes: currentStateValue));
        }
    });

  }
}