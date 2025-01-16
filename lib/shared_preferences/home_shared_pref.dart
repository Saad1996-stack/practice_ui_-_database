import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/shared_preferences/login_shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeScreen extends StatefulWidget {

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen>
{
  int countRun = 0;
  Color bgColor = Colors.white;

  @override
  void initState() {
    super.initState();
    runCount();
  }

  runCount()
  async{
   SharedPreferences pref = await SharedPreferences.getInstance();
   setState(() {
     countRun = (pref.getInt("runcount") ?? 0) + 1;
     pref.setInt("runcount", countRun);
     if(countRun %3 ==0)
       {
         bgColor = getRandomColor();
       }
   });
  }

  Color getRandomColor()
  {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: bgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$countRun",style: TextStyle(fontSize: 20),),
              Text("Welcome to Home",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),

              SizedBox(height: 30,),

              ElevatedButton(onPressed: ()
              async{
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.setBool("Login", false);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>loggedIn()));
              },
                  child: Text("Logout")),




            ],
          ),
        ),
      ),


    );
  }
}
