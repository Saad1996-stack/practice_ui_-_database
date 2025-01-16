import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_shared_pref.dart';

class loggedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()
           async {
              SharedPreferences pref = await SharedPreferences.getInstance();
              pref.setBool("Login", true);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homeScreen()));
            },
                child: Text("Login"),
            ),



          ],
        ),
      ),
    );
  }
}
