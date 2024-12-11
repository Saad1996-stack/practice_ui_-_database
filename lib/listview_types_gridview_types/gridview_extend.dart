import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(homegrid());
}

class homegrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: gridextend(),
    );
  }
}

class gridextend extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      'name': 'Saad',
      'bgColor': Colors.cyan,
    },
    {
      'name': 'Khan',
      'bgColor': Colors.grey,
    },
    {
      'name': 'Ahmed',
      'bgColor': Colors.lightBlue,
    },
    {
      'name': 'Mac',
      'bgColor': Colors.teal,
    },
    {
      'name': 'Wahaj',
      'bgColor': Colors.red,
    },
    {
      'name': 'Hazim',
      'bgColor': Colors.yellow,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.brown,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.orange,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.amber,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.pinkAccent,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.pink,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.deepPurpleAccent,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.greenAccent,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.blue,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.limeAccent,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.indigo,
    },
    {
      'name': 'Saad',
      'bgColor': Colors.cyan,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Extend"),
      ),

      ///GridView.Extend

      // body: GridView.extent(
      //   // scrollDirection: Axis.horizontal,
      //   childAspectRatio: 2 / 2,
      //   maxCrossAxisExtent: 200,
      //   children: mData.map((element) {
      //     return Container(
      //       margin: EdgeInsets.all(10),
      //       height: 100,
      //       width: 100,
      //       color: element["bgColor"],
      //       child: Text(element["name"]),
      //     );
      //   }).toList(),
      // ),


      ///GridView.Builder

      // body: Padding(
      //   padding: const EdgeInsets.all(11.0),
      //   child: GridView.builder(
      //     itemCount: mData.length,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //      // maxCrossAxisExtent: 200,
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       childAspectRatio: 2/2,
      //      // childAspectRatio: 9/16,
      //     ),
      //     itemBuilder: (context,index){
      //       return Container(
      //         height: 200,
      //         width: 400,
      //         color: mData[index]["bgColor"],
      //         child: Text(mData[index]["name"]),
      //       );
      //     },
      //   ),
      // ),



      ///gridview.builder

      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2/2,
              ),
              itemBuilder: (context,index){
                return Container(
                  color: mData[index]["bgColor"],
                  child: Text(mData[index]["name"]),
                );
              },
            ),
          ),

          Expanded(
            child: GridView.builder(
              itemCount: mData.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 200,
                childAspectRatio: 2/2,
              ),
              itemBuilder: (context,index){
                return Container(
                  color: mData[index]["bgColor"],
                  child: Text(mData[index]["name"]),
                );
              },
            ),
          ),

        ],
      ),

    );
  }
}
