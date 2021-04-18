import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/testHome.dart';

var OrderId = random(1000, 5000);

class OrderPlaced extends StatefulWidget {
  @override
  _OrderPlacedState createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Color(0xffE8E6E3),
        child: Stack(
          children: <Widget>[
            Image.network(
              "https://cdn.dribbble.com/users/583807/screenshots/5187139/v5.gif",
            ),
            Positioned(
              right: 120.0,
              top: 320.0,
              child: Text(
                "ORDER ID: " + "$OrderId",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
            Positioned(
              right: 112.0,
              top: 380.0,
              child: SizedBox(
                height: 40,
                width: 160,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(_createRoute());
                  },
                  child: Text("Continue Shopping",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => rootPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
int random(min, max) {
  var rn = new Random();
  return min + rn.nextInt(max - min);
}
