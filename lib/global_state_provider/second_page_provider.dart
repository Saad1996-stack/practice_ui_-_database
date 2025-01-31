import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/global_state_provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondPageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterProvider>().incrementCount();
          },child: Icon(Icons.add),
          ),
          FloatingActionButton(onPressed: ()
          {
            context.read<CounterProvider>().decrementCount();
          },child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}
