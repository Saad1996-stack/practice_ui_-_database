import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/wallpaper_ui/wallpaper_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return wallhome();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Text("Wall Screen's",style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight.w900),)),
      ),
    );
  }
}
