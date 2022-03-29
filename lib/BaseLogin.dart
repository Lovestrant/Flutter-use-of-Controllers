import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hs_trials/BigText.dart';

import 'Login.dart';

class BaseLogin extends StatelessWidget {
  const BaseLogin({Key? key, String title = "BaseLogin"}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Builder(
      builder: (context) {

        return MaterialApp(
          title: 'BaseLogin',
          home: Container(
            color: Colors.purple,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Row(
                    children: [
                      Container(
                        height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage("Assets/Images/comp.jpg"),
                            ),
                          ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                     Container(
                       height: 40,
                       width: 300,
                       margin: EdgeInsets.all(10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           DefaultTextStyle(
                             style: TextStyle(
                             fontFamily: "Roboto",
                              ),
                             child: BigText(text: "WELCOME ON BOARD!", size: 20,),
                           )
                         ],
                       ),
                     ),
                    ],

                  ),

                  SizedBox(height: 30,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 300,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: "Roboto"
                              ),
                              child: BigText(text: "The best way to the bank", size: 12,color: Colors.white,),
                            )

                          ],
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 50,),

                  Column(
                    children: [
                        TextButton(
                            onPressed: ()=>{
                              //Navigate to a new Activity
                              Navigator.pushNamed(context, '/Register'),
                            },
                            child:  BigText(text: "Sign Up", size: 15,color: Colors.white,),
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                            shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                            ),
                            padding:MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(20),
                              ),
                          ),
                        ),

                      SizedBox(height: 30,),

                      TextButton(
                        onPressed: ()=>{
                          Navigator.pushNamed(context, '/Login'),
                        },
                        child:  BigText(text: "Sign In", size: 15,color: Colors.white,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),

                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                          ),
                          padding:MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(20),

                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
          ),
        );
      }
    );

  }
}
