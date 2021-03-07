import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'package:shop/MyCart.dart';
import 'package:firebase_core/firebase_core.dart';

String item1 = "Iphone 12 Pro";
String item2 = "Iphone 12 Pro Max";
String item3 = "Samsung Galaxy S21 Ultra";
String item4 = "One Plus 8 Pro";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          'Quick Shop',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23.0,
          ),
        ),
      ),
      body: Padding(
            padding: const EdgeInsets.all(8.0),

            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Container(
                      height: 500.0,
                      margin: const EdgeInsets.only(bottom: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: FractionalOffset.bottomCenter,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8.0, 0.0, 5.0, 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 180.0,
                                        width: 310.0,
                                        color: Colors.orange.shade50,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              13.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            children: <Widget>[

                                              Text(
                                                "$item1",
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                "MRP: 20,000 Rupees",
                                                style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.0,
                                              ),
                                              // ignore: deprecated_member_use
                                              ButtonTheme(
                                                minWidth: 290.0,
                                                height: 45.0,
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text("Buy Now"),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              ButtonTheme(
                                                minWidth: 290.0,
                                                height: 45.0,
                                                child: RaisedButton(
                                                  onPressed: () {},
                                                  child: Text("Add to Cart"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      );

  }
}


Widget _myCart() {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.yellow,
      title: Text(
        "My Cart",
        style: TextStyle(

          color: Colors.black,
          fontSize: 23.0,
        ),
      ),
    ),
    body: cart(),
  );
}

Widget _myOrder() {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.yellow,
      title: Text(
        "My Orders",
        style: TextStyle(
          color: Colors.black,
          fontSize: 23.0,
        ),
      ),
    ),
  );
}
