import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/counter_state.dart';
import 'counter_event.dart';


                          ///events,state
class CounterBloc extends Bloc<CounterEvent, CounterBlocState>
{
  CounterBloc() : super(CounterBlocState(counts: 0)){
    on<IncrementCountEvent>((event, emit){
      emit(CounterBlocState(counts: state.counts+1));
    });

    on<DecrementCountEvent>((event, emit){
      if(state.counts>0)
      emit(CounterBlocState(counts: state.counts - 1));
    });
  }
}