import 'package:flutter/material.dart';
import 'package:hs_trials/BaseLogin.dart';

import 'Login.dart';
import 'Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hs Trials',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home: const BaseLogin(),
      routes: <String, WidgetBuilder> {
        '/Login': (BuildContext context) => Login(title: 'Login Page'),
        '/Register': (BuildContext context) => Register(title: 'Register'),
        '/BaseLogin': (BuildContext context) => BaseLogin(title: 'BaseLogin'),

      },
    );
  }
}


