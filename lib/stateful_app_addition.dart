import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homepagescreen();
  }
}

class homepagescreen extends State<homepage> {
  TextEditingController inputno1 = TextEditingController();
  TextEditingController inputno2 = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RunTime Addition",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: TextField(
                controller: inputno1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    label: Text("Enter First Number"),
                    hintText: "First Number",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black45,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black45,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: TextField(
                controller: inputno2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter Second Number"),
                  hintText: "Enter 2nd Number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black45,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 290,
              child: ElevatedButton(
                onPressed: () {
                  addition(inputno1.text.toString(), inputno2.text.toString());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    )),
                child: Text("Addition"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              result,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  addition(String num1, String num2) {
    if (num1 == "" && num2 == "") {
      setState(() {});
      result = "Please fill the both fields";
    } else if (num1 == "") {
      setState(() {});
      result = "Please Enter the First Number";
    } else if (num2 == "") {
      setState(() {});
      result = "Please Enter the Second Number";
    } else {
      setState(() {});
      int value1 = int.parse(num1.toString());
      int value2 = int.parse(num2.toString());

      int sum = value1 + value2;
      result = "The sum of $num1 and $num2 is $sum";
    }
  }
}
