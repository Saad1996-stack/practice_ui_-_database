import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(listView());
}

class listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List view and Listview.builder",
      home: listbuilder(),
    );
  }
}

class listbuilder extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      "name": "Saad",
      "bgColor": Colors.orangeAccent,
    },
    {
      "name": "Khan",
      "bgColor": Colors.black,
    },
    {
      "name": "Wahaj",
      "bgColor": Colors.grey,
    },
    {
      "name": "Abbo",
      "bgColor": Colors.green,
    },
    {
      "name": "Abbo",
      "bgColor": Colors.green,
    },
    {
      "name": "Abbo",
      "bgColor": Colors.green,
    },
    {
      "name": "Abbo",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "rameen",
      "bgColor": Colors.green,
    },
    {
      "name": "Mac",
      "bgColor": Colors.green,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview and Listview.Builder"),
      ),

      ///List View

      /* body: ListView(
          children: mData.map((element){
            return Container(
              margin: EdgeInsets.all(21),
              height: 80,
              width: 350,
              color: element["bgColor"],
              child: Text(element["name"]),
            );
          }).toList(),
      ),*/

      ///Listview.builder
     body: ListView.builder(
       itemCount: mData.length,
         itemBuilder: (context, index){
       return Container(
         margin: EdgeInsets.all(21),
         height: 100,
         width: 350,
         color: mData[index]["bgColor"],
         child: Text(mData[index]["name"]),
       );
     }),
    );
  }
}
