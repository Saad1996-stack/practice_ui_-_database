import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main ()
{
  runApp(sharepre());
}
class sharepre extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: sharedpre(),
   );
  }
}
class sharedpre extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()=>sharepref();
}
class sharepref extends State<sharedpre>
{
  String name = "";
  TextEditingController nameController = TextEditingController();
  SharedPreferences? pref;
  @override
  void initState()
  {
    super.initState();
    getData();
  }

  getData()
  async {
    pref = await SharedPreferences.getInstance();
    name = pref!.getString("name") ?? "";
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context)
  {
    nameController.text = name;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
           name!="" ? Text("Welcome $name",style: TextStyle(fontSize: 25),) : Container(),
            TextField(
              controller: nameController,
            ),
            ElevatedButton(onPressed: () async{
              pref!.setString("name", nameController.text);
              getData();
            },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }

}