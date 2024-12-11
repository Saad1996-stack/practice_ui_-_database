import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class staggerHome extends StatelessWidget
{
  List<Map<String,dynamic>> mData = [
    {
      "image":
      "assets/images/abstract-dark-background-with-flowing-colouful-waves_1048-13124.jpg",
    },
    {
      "image": "assets/images/bg_mountain.jpg",
    },
    {
      "image": "assets/images/bg_leafs.jpg",
    },
    {
      "image": "assets/images/bg_cold.jpg",
    },
    {
      "image": "assets/images/bg_nature.jpg",
    },
    {
      "image": "assets/images/bg_mountain.jpg",
    },
    {
      "image": "assets/images/bg_tree.jpg",
    },
    {
      "image": "assets/images/bg_mount_sea.jpg",
    }
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     body: StaggeredGrid.count(
         crossAxisCount: 3,
         mainAxisSpacing: 10,
       crossAxisSpacing: 10,
      children: [
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
            child: Container(
              height: 300,
              width: 100,
              color: Colors.grey,
        ),
        ),

        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
          child: Container(
            height: 300,
            width: 200,
            color: Colors.purpleAccent,
          ),
        ),

        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
          child: Container(
            height: 300,
            width: 200,
            color: Colors.yellow,
          ),
        ),

        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2,
          child: Container(
            height: 300,
            width: 200,
            color: Colors.redAccent,
          ),
        ),

      ],
     ),
    );
  }
}
