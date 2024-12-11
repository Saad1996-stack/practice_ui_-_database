import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class maxlearn_login extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 420,
                height: 250,
                color: Color(0xff162534),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in to your Account",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("Sign in to your Account",style: TextStyle(color: Colors.grey,fontSize: 16),),
                    ],
                  ),
                ),
              ),
                SizedBox(height: 28,),
                Container(
                  width: 370,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "ferdinand@gmail.com",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
          
              SizedBox(height: 20,),
          
              Container(
                width: 370,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 20,),
          
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                    child: Text("Forget Password?",style: TextStyle(fontSize: 16),textAlign: TextAlign.right,)),
              ),
          
              SizedBox(height: 20,),
          
              Container(
                width: 370,
                height: 50,
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xffC0E863),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Login"),
                ),
              ),
          
              SizedBox(height: 20,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text("Orloginwith",style: TextStyle(fontSize: 18),),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 20,),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 140,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: (){},
                      child: Row(
                        children: [
                          Image.asset("assets/images/ic_google.png",height: 15,width: 30,),
                          Text("Google",style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                  ),
          
                  Container(
                    width: 148,
                    height: 50,
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/ic_facebook.png",height: 20,width: 20,),
                            Text("Facebook",style: TextStyle(fontSize: 18),),
                          ],
                        ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 10,),
                  Text("Register",style: TextStyle(fontSize: 18,color: Color(0xffC0E863))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}