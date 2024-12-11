import 'package:flutter/material.dart';
import 'cust_class.dart';
import 'home.dart';

void main ()
{
  runApp(mainCust());
}
class mainCust extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: custHome(),
    );
  }
}
