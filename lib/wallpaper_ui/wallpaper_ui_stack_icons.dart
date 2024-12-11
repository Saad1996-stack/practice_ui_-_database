import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class wallpaperstack extends StatelessWidget {

  String name;
  wallpaperstack({required this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            getImagePart1(),

            getIconsPart2(),
          ],
        ),
      ),
    );
  }

  Widget getImagePart1()
  {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_greensea.jpg"),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget getIconsPart2()
  {
    return Positioned(
      bottom: 25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            Text( "Welcome to the $name",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w900),),
            SizedBox(height: 250),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffBFB9B4),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffBFB9B4),
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: Icon(
                        Icons.info_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "info",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xffBFB9B4),
                        border: Border.all(
                          width: 1,
                          color: Color(0xffBFB9B4),
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        Icons.save_alt_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Save",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xff3F64F5),
                        border: Border.all(
                          width: 1,
                          color: Color(0xff3F64F5),
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        Icons.assignment_turned_in,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Apply",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
