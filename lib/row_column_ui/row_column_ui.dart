import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(row_col());
}

class row_col extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Row and Column",
      home: row_and_col(),
    );
  }
}

class row_and_col extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Row and Column UI",
          style: TextStyle(
              fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
        ),
        height: 400,
        width: 1002,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 11),
              width: 300,
              child: Column(
                children: [
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    // width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xffE6F0FA),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Center(
                          child: Text(
                            "Strawberry Pavlova",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.black54),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE6F0FA),
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text(
                        "The layout framework allows you to nest rows and columns inside of rows and columns as deeply as you need. Let's look at the code for the outlined section of the following layout:",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                        textAlign: TextAlign.center,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffE6F0FA),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black54,
                              size: 14,
                            ),
                          ],
                        ),
                        Text(
                          "170 Reviews",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      color: Color(0xffE6F0FA),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.kitchen_outlined,
                              color: Colors.green,
                              size: 16,
                            ),
                            Text("PREP:"),
                            Text("25 min"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.green,
                              size: 16,
                            ),
                            Text("COOK"),
                            Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("1 hr")),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.green,
                              size: 16,
                            ),
                            Text("FEEDS:"),
                            Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text("4-6")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 700,
              child: Image.asset(
                "assets/images/bg_cake.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
