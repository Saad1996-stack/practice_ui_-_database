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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Indian Movies",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
          ),
            Expanded(
              flex: 13,
              child: GridView.builder(
                    itemCount: myData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 3/4,
                    ),
                    itemBuilder: (context,index)
                    {
                      return CardwidgetCustom(
                        imgPath: myData[index]["imgPath"],
                      );
                    },
                  ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Upcoming Movies",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            ),

            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: myData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CardwidgetCustom(
                      imgPath: myData[index]["imgPath"],
                      isNetflixLogo: myData[index]["isNetflixLogo"],
                      isRecently: myData[index]["isRecently"],
                      isTopten: myData[index]["isTopten"],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}