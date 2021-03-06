import 'package:flutter/material.dart';
import 'package:shop/HomePage.dart';
import 'package:shop/Login.dart';
import 'package:shop/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: Login(),
    );
  }
}