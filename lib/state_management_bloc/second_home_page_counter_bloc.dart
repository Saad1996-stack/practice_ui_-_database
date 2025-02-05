import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/counter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/counter_event.dart';

class SecondPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${context.watch<CounterBloc>().state.counts}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: ()
                {
                  context.read<CounterBloc>().add(DecrementCountEvent());
                },
                    tooltip: "Decrement",
                    icon: Icon(Icons.remove)),
                IconButton(onPressed: ()
                {
                    context.read<CounterBloc>().add(IncrementCountEvent());
                },
                    tooltip: "Increment",
                    icon: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
