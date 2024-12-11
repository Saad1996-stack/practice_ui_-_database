import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class leafboard extends StatelessWidget
{
  TextEditingController input1 = TextEditingController();
  TextEditingController input2 = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leafboard login page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/ic_leaf.png",height: 30,),
                SizedBox(width: 10,),
                Text("Leafboard",style: TextStyle(fontSize: 25),),
              ],
            ),
            SizedBox(height: 15,),
            Text("Work without limits",style: TextStyle(fontSize: 22),),

            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text("Your email address",style: TextStyle(fontSize: 20)),
            ),

            SizedBox(height: 10,),

            Container(
              width: 400,
              child: TextField(
                controller: input1,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "dilerragip@gmail.com",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    )
                ),
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text("Choose a password",style: TextStyle(fontSize: 20)),
            ),

            SizedBox(height: 10,),

            Container(
              width: 400,
              child: TextField(
                controller: input2,
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    hintText: "min. 8 characters",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
            ),

            SizedBox(height: 30,),

            SizedBox(
              height: 56,
              width: 400,
              child: ElevatedButton(onPressed: ()
              {
                print(input1.text);
                print(input2.text);

              },
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color(0xffA5FB83),
                    foregroundColor: Colors.black,
                    //minimumSize: Size(200, 55),
                  ),
                  child: Text("Continue  >",style: TextStyle(fontSize: 15),)),
            ),

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.grey
                    ),
                  ),
                ),
                Text("or"),

                Container(
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.grey
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),

            Container(
              width: 400,
              height: 56,
              child: OutlinedButton(onPressed: ()
              {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ic_google.png",height: 18,width: 20),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Sign up with Google",style: TextStyle(fontSize: 15),),
                      ),
                    ],
                  )
              ),
            ),

            SizedBox(height: 30,),


            Container(
              width: 400,
              height: 56,
              child: OutlinedButton(onPressed: ()
              {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/ic_apple.png",height: 18,width: 20),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Sign up with Apple",style: TextStyle(fontSize: 15),),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}