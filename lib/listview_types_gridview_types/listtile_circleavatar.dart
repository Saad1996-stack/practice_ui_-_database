import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(firstWhatsapp());
}

class firstWhatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: whatsappui(),
    );
  }
}

class whatsappui extends StatelessWidget {
  String num = "";

  List<Map<String, dynamic>> myChat = [
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 0,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
    {
      "name": "Saad",
      "msg": "Hello...",
      "isUnread": 1,
      "time": "11:00 am",
      "bgImage":
          "https://icons.veryicon.com/png/o/internet--web/web-interface-flat/6606-male-user.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myChat.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("${myChat[index]["bgImage"]}"),
              ),
              title: Text("${myChat[index]["name"]}"),
              subtitle: Text("${myChat[index]["msg"]}"),
              trailing: Column(
                children: [
                  Text("${myChat[index]["time"]}"),
                  myChat[index]["isUnread"] > 0
                      ? CircleAvatar(
                          radius: 15,
                          child: Text("${myChat[index]["isUnread"]}"),
                        )
                      : SizedBox(),
                ],
              ));
        },
      ),
    );
  }
}
