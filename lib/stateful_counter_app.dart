import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(counter_app());
}
class counter_app extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Counter_App",
      home: counter(),
   );
  }
}
class counter extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return counter_apps();
  }
}
class counter_apps extends State<counter>
{
  int counter = 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),

      body: Center(child: Text("$counter",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
      {
          setState((){
            counter = counter + 1;
          });
          print(counter);
      },
        child: Icon(Icons.add),
      ),
    );
  }

}