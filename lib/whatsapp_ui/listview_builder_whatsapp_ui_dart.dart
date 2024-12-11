import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(whatsappHome());
}

class whatsappHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp UI",
      home: whatsappui(),
    );
  }
}

class whatsappui extends StatelessWidget {
  List<Map<String, dynamic>> whatsappData = [
    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Mac",
      "Text": "Hello?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hi...?",
      "Time": "08:58",
      "unread": "5",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Where are you?",
      "Time": "08:58",
      "unread": "1",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "How are you?",
      "Time": "08:58",
      "unread": "9",
      "image": "assets/images/ic_facebook.png",
    },

    {
      "name": "Jane",
      "Text": "Busy!!!",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/heart.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_leaf.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },

    {
      "name": "Jane",
      "Text": "Hey there! Are you using whatsapp?",
      "Time": "08:58",
      "unread": "2",
      "image": "assets/images/ic_boy_logo.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Color(0xff075F56),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
            itemCount: whatsappData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(whatsappData[index]["image"]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                whatsappData[index]["name"],
                                style: TextStyle(fontSize: 25),
                              ),
                              Text(
                                whatsappData[index]["Text"],
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child:
                          Column(
                         //   crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                whatsappData[index]["Time"],
                                style: TextStyle(fontSize: 16),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 17),
                                child: Container(
                                    height: 30,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.green,
                                      ),
                                      shape: BoxShape.circle,
                                    ),

                                child:Center(
                                    child: Text(whatsappData[index]["unread"],style: TextStyle(fontSize: 17,color: Colors.white),)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
