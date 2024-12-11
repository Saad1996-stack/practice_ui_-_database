import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/wallpaper_ui_stack_icons.dart';
import 'wallpaper_ui.dart';

class wallpaper extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
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

  ///use wallpaper_ui class for excess List
  List<Map<String, dynamic>> mydata = wallhome.mData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Color(0xffEAF3F4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: ()
                              {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                              ),
                            ),
                            InkWell(
                              // onTap: ()
                              // {
                              //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              //     return wallpaperstack();
                              //   }));
                              // },
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Nature",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 40),
                      ),
                      Text(
                        "36 wallpaper available",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 22,
              child: Container(
                color: Color(0xffEAF3F4),
                child: GridView.builder(
                  itemCount: mydata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 9 / 16,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          width: 1,
                          color: Colors.transparent,
                        ),
                        image: DecorationImage(
                          image: AssetImage(mydata[index]["image"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
