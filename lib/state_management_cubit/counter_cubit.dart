import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>
{
  ///simple method

  //CounterCubit()    : super(0);

  ///Create Counter State Class

  CounterCubit()  : super(CounterState(count: 0));

  void incrementCount()
  {
    emit(CounterState(count: state.count + 1));
  }

}