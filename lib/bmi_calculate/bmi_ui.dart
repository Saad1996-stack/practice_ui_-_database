import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(bmi_cal());
}

class bmi_cal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI UI",
      home: bmi_ui(),
    );
  }
}

class bmi_ui extends StatefulWidget {

  @override
  State<bmi_ui> createState() => _bmi_uiState();
}

app()
{
 return AppBar(
   title: Text("BMI UI"),
   backgroundColor: Colors.blue,
 );
}

class _bmi_uiState extends State<bmi_ui> {
  TextEditingController weight = TextEditingController();

  TextEditingController feet = TextEditingController();

  TextEditingController inch = TextEditingController();

  String bmi = "";

  String bmiMessage = "";

  Color bgColor = Colors.white60;

  String img = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: bgColor,
      appBar: app(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.orange,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   height: 200,
              // width: 200,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/images/love.png"),
              //   ),
              // ),
              //   child: Center(child: Text("24.4",style: TextStyle(fontSize: 30,color: Colors.redAccent,fontWeight: FontWeight.bold),)),
              // ),
              Stack(
                children: [
                 // Image.asset("assets/images/bg_cake.png"),

                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                        ),
                        child: Image.asset("assets/images/heart.png",height: 300,width: 300,color:   bgColor,)),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 300,
                      width: 300,
                      // color: Colors.black,
                      child: Align(
                          alignment: Alignment.center,
                          child:

                          Text("${bmi}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold, ),
                          )
                      ),
                    ),
                  ),
                 // Image.asset("assets/images/bg_cake.png"),
                ],
              ),
          
              Text("$bmiMessage",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xff21c4b9)),),
          
          
            SizedBox(
              height: 20,
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Weight in Kg",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff21c4b9)),),
          
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: 100,
                            child:
                            TextField(
                              controller: weight,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    Column(
                      children: [
                        Text("Height in ft",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff21c4b9)),),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: 100,
                            child:
                            TextField(
                              controller: feet,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
          
                    Column(
                      children: [
                        Text("Height in inch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff21c4b9)),),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            width: 100,
                            child:
                            TextField(
                              controller: inch,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(21),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xff21c4b9),
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              SizedBox(
                height: 50,
                width: 290,
                child: ElevatedButton(onPressed: ()
                {
                  var kg = int.parse(weight.text.toString());
                  var ft = int.parse(feet.text.toString());
                  var ic = int.parse(inch.text.toString());
          
                  int totalInch = (ft * 12) + ic;
                  num totalCm = totalInch * 2.54;
                  num totalMeters = totalCm / 100;
                  num result = kg/pow(totalMeters, 2.0);
          
                  bmi = "${result.toStringAsFixed(2)}";
          
                  if(result > 25) ///overweight
                    {
                        bgColor = Colors.red;
                        bmiMessage = "You are OverWeight";
                        img = "assets/images/overweight.png";
                    }
                  else if(result < 18)
                    {
                      bgColor = Colors.orangeAccent; ///underweight
                      bmiMessage = "You are UnderWeight";
                      img = "assets/images/underweight.png";
                    }
                  else
                    {
                      bgColor = Colors.greenAccent; ///healthy
                      bmiMessage = "You are Healthy";
                      img ="assets/images/healthy.png";

                    }
                  setState(() {
          
                  });
          
                },
                    child: Text("Calculate BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff21c4b9),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
               // img!="" ? Image.asset(img, height: 200,) : Container(),

              SizedBox(
                height: 10,
              ),

             /* if(img != "")
                Image.asset(img,height: 175),*/

                img!="" ? Image.asset(img,height: 175,) : Container(),
            ],
          ),
        ),
      ),
    );


  }


}

