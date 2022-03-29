import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BigText.dart';

class Register extends StatelessWidget {
  const Register({Key? key, String title = "Register"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Container(
          color: Colors.purple,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(text: "Hello world Register Page", size: 13,)
            ],
          )
      ),
    );
  }
}
