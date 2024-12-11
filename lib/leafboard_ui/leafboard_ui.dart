import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'leafboard_login_pg.dart';

void main() {
  runApp(homepg());
}

class homepg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LeafBoard",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_page_leaf();
  }
}

class home_page_leaf extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Column(children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff111B32),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(130),
                    bottomRight: Radius.circular(130)),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              "Leafboard",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "A platform built for a new way of working",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 130,
            ),
            SizedBox(
              height: 50,
              width: 220,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffA5FB83),
                    foregroundColor: Colors.black,
//minimumSize: Size(200, 55),
                  ),
                  child: Text(
                    "Get Started for Free   >",
                    style: TextStyle(fontSize: 15),
                  )),
            )
          ]),
          Positioned(
            top: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 180,
                horizontal: 130,
              ),
              child: Container(
// width: 200,                                                       //color: Color(0xfff5f6f8)
// height: 280,
//   color: Colors.green,
                  child: Image.asset("assets/images/ic_circle.png",
                      height: 200, width: 170, color: Color(0xfff5f6f8))),
            ),
          ),
          Positioned(
            top: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 240,
                horizontal: 166,
              ),
              child: Container(
                  child: Image.asset(
                "assets/images/ic_leaf.png",
                height: 75,
                width: 100,
              )),
            ),
          ),
        ],
      ),
    ));
  }
}
