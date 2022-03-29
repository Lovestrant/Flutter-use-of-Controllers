import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BigText.dart';

class Login extends StatefulWidget {
  const Login({Key? key, title = "Login Page"}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var myEmailController = TextEditingController();
  var DisplayTextController = TextEditingController();
  var myPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myEmailController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }

  void submitData(String email, String password) {
    //What the function does
    setState(() {
      DisplayTextController.text = email;
    });

  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: MaterialApp(
        title: 'Login',
        home: Container(
            color: Colors.purple,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 250,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [

                      Container(
                        height: 250,
                        width: 300,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        color: Colors.white,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            BigText(text: DisplayTextController.text, size: 12, color: Colors.black,),

                            SizedBox(height: 20),

                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter Email",

                              ),
                              controller: myEmailController,
                            ),
                            SizedBox(height: 20,),

                            TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter Password",

                              ),
                              controller: myPasswordController,
                            ),

                            SizedBox(height: 10,),

                            TextButton(
                              onPressed: () {
                                //setState(() {
                                  submitData(myEmailController.text, myPasswordController.text);
                                //});

                              },
                              child: BigText(text: "Login", size: 13,color: Colors.white,
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.red),
                                padding:MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(20),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),

        ),

    ),
     );
  }
}
