import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/nav_other_method/nav_app_routes.dart';

class home_scr extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>home_screen();
}

class home_screen extends State<home_scr>
{
 static TextEditingController datatransfer = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: datatransfer,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(onPressed: ()
            {
              Navigator.pushNamed(context, AppRoutes.BACKSCREEN);
            },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}