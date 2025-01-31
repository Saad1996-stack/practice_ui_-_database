import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/global_state_provider/counter_provider.dart';
import 'package:learning_flutter_wigdets/global_state_provider/second_page_provider.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CounterProvider(), child: homeScreen()));
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter app Provider",
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("built again");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Provider"),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("You have pushed the button many times")),
            Center(
              child: Consumer<CounterProvider>(builder: (cont, provider, child){
                print("Consumer built again");
                return Center(
                  child: Text(
                    '${provider.getValue()}'
                  //"${context.watch<CounterProvider>().getValue()}"
                    //"${Provider.of<CounterProvider>(context).getValue()}"
                    ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
                  ),
                );
              }),
            ),
          ],
        ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SecondPageProvider()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
