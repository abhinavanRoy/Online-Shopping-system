import 'package:flutter/material.dart';
import 'package:shop/BuyPage.dart';

import 'package:shop/MyCart.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:shop/OrderConfirmPage.dart';
import 'package:shop/WelcomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: WelcomePage(),
    );
  }
}
