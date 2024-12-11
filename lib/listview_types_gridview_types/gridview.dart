import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(homegrid());
}
class homegrid extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Grid View",
      home: gridviewhome(),
    );
  }
}
class gridviewhome extends StatelessWidget
{
  List<Map<String, dynamic>>mData = [
    {
      "name" : "mac",
      "bgColor" : Colors.green,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.blue,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.purpleAccent,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.orange,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.yellow,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.teal,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.lightBlue,
    },
    {
      "name" : "Saad",
      "bgColor" : Colors.lightGreen,
    },
    {
      "name" : "wahaj",
      "bgColor" : Colors.grey,
    },
    {
      "name" : "khan",
      "bgColor" : Colors.cyan,
    },
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
    //  body:
      /*GridView.count(
       // childAspectRatio: 1/1,
        crossAxisCount: 2,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              height: 100,
              width: 100,
              color: mData[0]["bgColor"],
              child: Text(mData[0]["name"]),
            ),



          ],
      ),*/

     body: GridView.count(
       childAspectRatio: 2/2,
       crossAxisCount: 2,
       children: mData.map((element){
         return Container(
           margin: EdgeInsets.all(15),
           height: 100,
           width: 100,
           color: element["bgColor"],
           child: Text(element["name"]),
         );
       }).toList(),
     ),

    );
  }
}