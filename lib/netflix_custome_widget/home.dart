import 'package:flutter/material.dart';
import 'cust_class.dart';

void main ()
{
  runApp(custHome());
}
class custHome extends StatelessWidget
{
 List<Map<String, dynamic>> myData = [
   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },

   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },

   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },

   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },

   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },
   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },
   {
     "imgPath" : "assets/images/bg_netflix.png",
     "isNetflixLogo" : true,
     "isTopten"      : false,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflix_movie.png",
     "isNetflixLogo" : false,
     "isTopten"      : true,
     "isRecently"    : true,
   },

   {
     "imgPath" : "assets/images/bg_netflixs.png",
     "isNetflixLogo" : true,
     "isTopten"      : true,
     "isRecently"    : false,
   },




 ];

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: myData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3/4,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index)
          {
            return CardwidgetCustom(imgPath: myData[index]["imgPath"],
              isNetflixLogo: myData[index]["isNetflixLogo"],
              isTopten: myData[index]["isTopten"],
              isRecently: myData[index]["isRecently"],
            );
          },
        ),
      ),
    );
  }
}