
import 'package:flutter/material.dart';

void main ()
{
  runApp(textfield());
}
class textfield extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TextField",
      home: textfield_dec_btn(),
    );
  }
}
class textfield_dec_btn extends StatelessWidget
{
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text("Username & Pasword"),
      ),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                // onChanged: (values)
                // {
                //   print(values);
                // },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text("Email",style: TextStyle(color: Colors.black),),
                  hintText: "Enter your email...",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                    width: 2,
                      color: Colors.black45,
                    ),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                    )
                  ),
                  ),
                ),

              SizedBox(
                height: 20,
              ),

              TextField(
                controller: passController,
                // onChanged: (value)
                // {
                //   print(value);
                // },
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter your Password ****",
                  label: Text("Password"),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),

              ElevatedButton(onPressed: ()
              {
                print(nameController.text);
                print(passController.text);
              },
                  child: Text("Get value")
              ),
            ],
          ),
        ),
    );
  }

}