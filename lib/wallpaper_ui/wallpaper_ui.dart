import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/staggerGrid.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/wallpaper_ui_gridview_builder.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/wallpaper_ui_stack_icons.dart';

void main ()
{
  runApp(wallpaperhome());
}
class wallpaperhome extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wallpaper App",
      home: staggerHome(),
    );
  }
}
class wallhome extends StatelessWidget
{
  TextEditingController namecontrol = TextEditingController();

 static List<Map<String, dynamic>>mData = [
    {
      "image" : "assets/images/abstract-dark-background-with-flowing-colouful-waves_1048-13124.jpg",
    },
    {
      "image" : "assets/images/bg_mountain.jpg",
    },
    {
      "image" : "assets/images/bg_leafs.jpg",
    },
    {
      "image" : "assets/images/bg_cold.jpg",
    },
   {
     "image" : "assets/images/bg_nature.jpg",
   },
   {
     "image" : "assets/images/bg_mountain.jpg",
   },
   {
     "image" : "assets/images/bg_tree.jpg",
   },
   {
     "image" : "assets/images/bg_mount_sea.jpg",
   }

 ];

  List<Map<String, dynamic>> colorData = [
    {
      "bgColor" : Color(0xffFDB7B9),
    },
    {
      "bgColor" : Color(0xff4164E0),
    },
    {
      "bgColor" : Color(0xff6141E0),
    },
    {
      "bgColor" : Color(0xff60BFC1),
    },
    {
      "bgColor" : Colors.black,
    },
    {
      "bgColor" : Color(0xffFF9A16),
    },
    {
      "bgColor" : Color(0xffB647EB),
    }
  ];

  List<Map<String, dynamic>> gridData = [
    {
      "image" : "assets/images/bg_nature.jpg",
      "text"  : "Abstract"
    },
    {
      "image" : "assets/images/bg_mountain.jpg",
      "text"  : "Nature"
    },
    {
      "image" : "assets/images/bg_tree.jpg",
      "text"  : "Tree"
    },
    {
      "image" : "assets/images/bg_mount_sea.jpg",
      "text"  : "Mountain"
    }

  ] ;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
                Expanded(
                  flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          child: TextField(
                            controller: namecontrol,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: "Find Wallpaper...",
                              suffixIcon: Icon(Icons.search,size: 30,),
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (_) {
                                return wallpaperstack(name: namecontrol.text,);
                              }));
                            },
                            child: Icon(Icons.arrow_forward_ios,size: 30,)),
                      ],
                    ),
                ),

              Expanded(
                flex: 6,
                  child: getPart2(),

              ),
              Expanded(
                  flex: 3,
                  child: getPart3(),
              ),

              Expanded(
                  flex: 4,
                  child: getPart4(),
              ),
            ],


          ),
        ),
      ),
    );
  }

  Widget getPart2()
  {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Best of the month",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mData.length,
            itemBuilder: (context,index)
            {
              return Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      width: 1,
                      color: Colors.transparent,
                    ),
                    image: DecorationImage(
                      image: AssetImage(mData[index]["image"],),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],

    );
  }

  Widget getPart3()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Best of the month",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: colorData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: colorData[index]["bgColor"],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1,
                          color: Colors.transparent
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget getPart4()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Best of the month",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),

        SizedBox(height: 20,),

        Expanded(
          child: GridView.builder(
            itemCount: gridData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 2/1,
            ),
            itemBuilder: (context, index){
              return Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(gridData[index]["image"]
                      ),
                    )
                ),
                child: Center(child: Text(gridData[index]["text"],style: TextStyle(fontSize: 22,color: Colors.white),)),
              );
            },
          ),
        ),
      ],
    );
  }

}