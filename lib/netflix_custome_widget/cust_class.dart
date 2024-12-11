import 'package:flutter/material.dart';

class CardwidgetCustom extends StatelessWidget
{
  double myHeight;
  double myWeight;
  String imgPath;
  bool isNetflixLogo;
  bool isTopten;
  bool isRecently;

  CardwidgetCustom({this.myHeight = 260, this.myWeight = 170, required this.imgPath, this.isNetflixLogo = false, this.isTopten = false, this.isRecently = false});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        Container(
            height: myHeight,
            width: myWeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(imgPath),
              ),
            ),
        ),
        isNetflixLogo ? Image.asset("assets/images/ic_netflix_logo.png",width: 30,height: 30,) : Container(),

        isTopten ? Positioned(
          right: 0,
          child: Container(
            height: 45,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              children: [
                Text("Top",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
                Text("10",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
              ],
            ),
          ),
        ) : Container(),

        isRecently ? Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 35,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(child: Text("Recently added",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16,color: Colors.white),)),
          ),
        ) : Container(),
      ],
    );
  }

}