import 'dart:math';

import 'package:flutter/material.dart';

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
              right: 125.0,
              top: 320.0,
              child: Text(
                "ORDER ID: " + "$OrderId",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

int random(min, max) {
  var rn = new Random();
  return min + rn.nextInt(max - min);
}
