import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/counter_cubit.dart';
import 'package:learning_flutter_wigdets/state_management_cubit/counter_state.dart';

void main() {
  runApp(homeCubit());
}

class homeCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App using Cubit",
      home: BlocProvider(create: (context)=> CounterCubit(),child: homeCounterCubit(),),
    );
  }
}

class homeCounterCubit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Cubit"),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterCubit, CounterState>
        (builder: (context, state){
          return (
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("${state.count}",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
                  //child: Text("${context.watch<CounterCubit>().state.count}"))
              ),
              Text("You've pushed the button many times through Cubit"),
            ],
          ));
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          BlocProvider.of<CounterCubit>(context, listen: false).incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
