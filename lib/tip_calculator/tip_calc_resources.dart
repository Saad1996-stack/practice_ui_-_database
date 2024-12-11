
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tipcalc());
}

class tipcalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tip Calculator",
      home: tipCalculator(),
    );
  }
}

class tipCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => tiphome();
}

class tiphome extends State
{
  var billcontroller = TextEditingController();
  int percentcount = 1;
  bool isCustomtip = false;
  double totalBillAmt = 0.0;
  double totalTipAmt = 0.0;
  double TotalperPerson = 0.0;
  double tipPercentage = 0.0;
  double totalAmount = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F1F1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: getTitlepart1(),
              ),
              Expanded(
                flex: 5,
                child: getbillpart2(),
              ),
              Expanded(
                flex: 2,
                child: getEnterbill3(),
              ),
              Expanded(
                flex: 5,
                child: getChoosetip4(),
              ),
              Expanded(
                flex: 2,
                child: getSplittotal5(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTitlepart1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/ic_hat.png",
          height: 60,
          width: 60,
        ),
        SizedBox(
          width: 11,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text: "Mr",
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: "TIP",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Text(
              "Calculator",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            )
          ],
        ),
      ],
    );
  }

  Widget getbillpart2() {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Total p/person",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text.rich(TextSpan(
                text: "\$",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                children: [
                  TextSpan(
                      text: "${TotalperPerson == 0.0 ? "000" : TotalperPerson.toStringAsFixed(2)}",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                ],
              )),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Total bill"),
                      Text.rich(TextSpan(
                        text: "\$",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: "${totalBillAmt == 0.0 ? "000" : totalBillAmt.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Total tip"),
                      Text.rich(TextSpan(
                        text: "\$",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        children: [
                          TextSpan(
                              text: "${totalTipAmt == 0.0 ? "000" : totalTipAmt.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getEnterbill3() {
    return Row(
      children: [
        Expanded(
          child: Text.rich(TextSpan(
            text: "Enter\n",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            children: [
              TextSpan(
                  text: "your bill",
                  style: TextStyle(fontWeight: FontWeight.w300))
            ],
          )),
        ),
        Expanded(
            flex: 4,
            child: TextField(
              controller: billcontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixText: "\$",
                prefixStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    )),
              ),
            )),
      ],
    );
  }

  Widget getChoosetip4() {
    return Row(
      children: [
        Expanded(
            child: Text.rich(TextSpan(
          text: "Choose\n",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
          children: [
            TextSpan(
                text: "your tip",
                style: TextStyle(fontWeight: FontWeight.w300)),
          ],
        ))),
        Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: ()
                            {
                              tipPercentage = 10;
                              getthecalculatingresult();
                            },
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xff03c9bd),
                              ),
                              child: Center(
                                child: Text.rich(TextSpan(
                                    text: "10",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: "%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16))
                                    ])),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: ()
                            {
                              tipPercentage = 15;
                              getthecalculatingresult();
                            },
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xff03c9bd),
                              ),
                              child: Center(
                                child: Text.rich(TextSpan(
                                    text: "15",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: "%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16))
                                    ])),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: ()
                            {
                              tipPercentage = 20;
                              getthecalculatingresult();
                            },
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xff03c9bd),
                              ),
                              child: Center(
                                child: Text.rich(TextSpan(
                                    text: "20",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text: "%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 16))
                                    ])),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Stack(
                      children: [
                        TextField(
                          onChanged: (val)
                          {
                            tipPercentage = double.parse(val.toString());
                            getthecalculatingresult();
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixText: "\%",prefixStyle: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(
                                    style: BorderStyle.none,
                                  )
                              )
                          ),
                        ),
                        isCustomtip ? Container() : InkWell(
                          onTap: ()
                          {
                              isCustomtip = true;
                              setState(() {

                              });
                          },
                          child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff03c9bd),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                  child: Text(
                                "Custom tip",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  getSplittotal5()
  {
    return Row(
      children: [
        Expanded(
            child: Text.rich(TextSpan(
              text: "Split\n",
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 18),
              children: [
                TextSpan(
                  text: "the total",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ))),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: ()
                    {
                      if(percentcount > 1)
                        {
                          setState(() {

                          });
                          percentcount --;
                          getthecalculatingresult();
                        }
                    },
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff03c9bd),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12)),
                      ),
                      child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ),

                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                            "$percentcount",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 30),
                          )),
                    )),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: ()
                    {
                      setState(() {
                      });
                      percentcount ++;
                      getthecalculatingresult();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff03c9bd),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                      ),
                      child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void getthecalculatingresult ()
  {
    totalBillAmt = double.parse(billcontroller.text.toString());
    totalTipAmt = totalBillAmt * (tipPercentage / 100);
    totalAmount = totalBillAmt + totalTipAmt;
    TotalperPerson = totalAmount / percentcount;
    setState(() {

    });
  }

}
