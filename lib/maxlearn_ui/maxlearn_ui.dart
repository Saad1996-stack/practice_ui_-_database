import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'maxlearn_login_pg.dart';
import 'maxlearn_register.dart';

void main ()
{
  runApp(home_maxlearn());
}
class home_maxlearn extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Maxlearn",
      home: maxlearn(),
    );
  }
}
class maxlearn extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaxLearn"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 410,
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img_portal.webp"),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Text("Lets upgrade your learning experience ",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("Changing the way people learn providing an interactive,engaging, and personalized learning.",style: TextStyle(fontSize: 18,color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ),
          
              SizedBox(height: 30,),
          
              Container(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC0E863),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mobile_friendly_sharp),
                        SizedBox(width: 10,),
                        Text("Continue with number",style: TextStyle(fontSize: 20),)
                      ],
                    )
                ),
              ),
          
              SizedBox(height: 30,),
          
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
                  )
                ],
              ),
          
              SizedBox(height: 30,),
          
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
                        )
                      ),
                      onPressed: (){},
                        child: Row(
                          children: [
                            Image.asset("assets/images/ic_google.png",height: 15,width: 30,),
                            Text("Google",style: TextStyle(fontSize: 18,color: Colors.black)),
                          ],
                        ),
                    ),
                  ),
                  //SizedBox(width: 30,),
          
                  Container(
                    width: 148,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                        onPressed: (){},
                        child: Row(
                          children: [
                            Image.asset("assets/images/ic_facebook.png",height: 20,width: 20,),
                            Text("Facebook",style: TextStyle(fontSize: 18,color: Colors.black),),
                          ],
                        ),
                    ),
                  ),
                ],
              ),
                  SizedBox(height: 80,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(fontSize: 18),),
                      SizedBox(width: 10,),
                      Text("Register",style: TextStyle(fontSize: 18,color: Color(0xffC0E863))),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }

}