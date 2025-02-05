import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/counter_bloc.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/counter_event.dart';
import 'package:learning_flutter_wigdets/state_management_bloc/second_home_page_counter_bloc.dart';
import 'package:learning_flutter_wigdets/stateful_app_addition.dart';
import 'package:path/path.dart';

void main()
{
  runApp(BlocProvider(create: (context)=> CounterBloc(),child: homeBloc(),));
}

class homeBloc extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Bloc Counter App",
      home: homeBlocCounter(),
    );
  }
}

class homeBlocCounter extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${context.watch<CounterBloc>().state.counts}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
            Text("You have pushed the button many times"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
        },
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }

}
