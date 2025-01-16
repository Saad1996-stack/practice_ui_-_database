import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_shared_pref.dart';
import 'login_shared_pref.dart';

void main ()
{
  runApp(splashSharedpref());
}
class splashSharedpref extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: splashSharepref(),
    );
  }
}
class splashSharepref extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>splashSharepreference();
}
class splashSharepreference extends State<splashSharepref>
{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),()async{
      SharedPreferences pref = await SharedPreferences.getInstance();
      bool check = pref.getBool("Login") ?? false;

      Widget navigateTo = loggedIn();
      if(check)
        {
          navigateTo = homeScreen();
        }
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>navigateTo));

    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ic_google.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}