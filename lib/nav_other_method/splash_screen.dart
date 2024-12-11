import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/nav_other_method/nav_app_routes.dart';

import 'home_scr.dart';

class splash_scr extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>splash();
}

class splash extends State<splash_scr>
{
  @override
  void initState() {
    Timer(Duration(seconds: 2), ()
    {
      Navigator.pushReplacementNamed(context, AppRoutes.HOMESCREEN);
    });
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_tree.jpg"),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}