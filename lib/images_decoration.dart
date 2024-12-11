import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(firstapp());
}
class firstapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "First App",
      home: first_app(),
    );
  }
}
class first_app extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
         /* Row(
              children:[
               Image.asset("assets/images/bg_dart.jpg",width: 100,height: 100,),
                Image.asset("assets/images/ic_boy_logo.png",width: 100,height: 100,),
          ],
          ),
          Image.asset("assets/images/ic_boy_logo.png",width: 100,height: 100,),
          //Image.asset("assets/images/ic_flutter_logo.png",),*/
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Colors.black12,
              ),
              color: Colors.black,
             // borderRadius: BorderRadius.circular(100),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/110B/production/_104336340_gettyimages-615931930.jpg"),
              ),
            ),
              //child: Image.network("https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/110B/production/_104336340_gettyimages-615931930.jpg",width: 300,height: 300,fit: BoxFit.cover,)
            child: Center(child: Text("Tom",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
          ),

          ClipOval(
           // borderRadius: BorderRadius.circular(21),
              child: Image.network("https://ichef.bbci.co.uk/ace/standard/976/cpsprodpb/110B/production/_104336340_gettyimages-615931930.jpg",width: 200,height: 200,fit: BoxFit.cover,)),

        ],
      ),
    );
  }
}