import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tip_cal());
}

class tip_cal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tip Calc",
      home: tip_calculator(),
    );
  }
}

class tip_calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tip Calculator"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/ic_hat.png",
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Mr",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "TIP",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Calculator",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 22,
            ),

            Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
              color: Colors.white60,
              ),
              child: Column(
                children: [
                    Text("Total p/person",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                      ],
                    ),
                  Container(
                     width: 270,
                    // height: 2,
                    decoration: BoxDecoration(
                      border:Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Total bill",style: TextStyle(fontSize: 20),),
                            Row(
                              children: [
                              Text("\$"),
                                Text("000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Total tip",style: TextStyle(fontSize: 20),),
                            Row(
                              children: [
                                Text("\$"),
                                Text("000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Enter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("your bill",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      width: 258,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: Text("\$",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Text("Choose",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text("your tip",style: TextStyle(fontSize: 20),),
                    ],
                  ),
                 Column(
                   children: [
                     Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11),
                           child: Container(
                                width: 80,
                                height: 70,
                                decoration: BoxDecoration(
                                color: Color(0xff21c4b9),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Center(child: Text("10%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                              ),
                         ),

                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 11),
                     child: Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff21c4b9),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(child:Text("15%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
                      ),
                   ),

                  Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff21c4b9),
                          borderRadius: BorderRadius.circular(13),
                        ),
                      child: Center(child:Text("20%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),),
                    ),

                   ],
                 ),
                    SizedBox(
                      height: 10,
                    ),
                     Container(
                       height: 55,
                       width: 280,
                       decoration: BoxDecoration(
                         color: Color(0xff21c4b9),
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Center(child: Text("Custom tip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
                     )
                   ],
                 ),
                ],
              ),
            ),

            SizedBox(
              height: 50,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    Text("Split",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("the total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff21c4b9),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Icon(Icons.remove ,size: 50,color: Colors.white,),
                      ),
                      Container(
                        width: 120,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Center(child: Text("2",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
                      ),

                      Container(
                        width: 80,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xff21c4b9),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Icon(Icons.add ,size: 50,color: Colors.white,),
                      ),

                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
