import 'package:flutter/material.dart';
import 'package:learning_flutter_wigdets/nav_other_method/nav_app_routes.dart';

class back_screen extends StatelessWidget
{
  String name;
  back_screen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome, $name",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30),),
            Container(
              width: 100,
              height: 50,
              child: ElevatedButton(onPressed: ()
              {
               Navigator.pushNamed(context, AppRoutes.HOMESCREEN,arguments: name);

              },
                child: Text("Back"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
