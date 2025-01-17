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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
