import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class maxlearn_reg extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Maxlearn"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 420,
                height: 200,
                color: Color(0xff162534),
                child: Padding(
                  padding: EdgeInsets.only(top: 65),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Register",style: TextStyle(fontSize: 40,color: Colors.white),),
                        Text("Create your account",style: TextStyle(fontSize: 16,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 40,),
          
              Container(
                width: 370,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Full Name"),
                    hintText: "Ferdinand Sinaga",
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Ferdinand@gmail.com",
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
                  obscuringCharacter: "*",
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    label: Text("Password"),
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
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    label: Text("Repeat Password"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 50,),
          
              Container(
                width: 370,
                height: 50,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xffC0E863)
                  ),
                    child: Text("Register",style: TextStyle(fontSize: 18),),
                ),
              ),

              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("I have an account?",style: TextStyle(fontSize: 16),),
                    Text("Login",style: TextStyle(color: Color(0xffC0E863,),fontSize: 16)),
          ]
      ),
            ],
          ),
        ),
      ),
    );
  }

}