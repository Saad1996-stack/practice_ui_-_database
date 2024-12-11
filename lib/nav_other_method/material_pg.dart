import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/nav_other_method/nav_app_routes.dart';
import 'package:learning_flutter_wigdets/nav_other_method/splash_screen.dart';
import 'back_scr.dart';
import 'home_scr.dart';

void main()
{
  runApp(matpg());
}
class matpg extends StatelessWidget
{
  //TextEditingController mydatatransfer = home_screen.datatransfer;
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "First Page",
      initialRoute: AppRoutes.SPLASHSCREEN,
      routes: AppRoutes.appRoute,
      /*{
        '/splash' : (context)=> splash_scr(),
        '/home'   : (context)=> home_scr(),
        '/back'   : (context)=> back_screen(name: mydatatransfer.text),
      }*/
    );
  }
}
