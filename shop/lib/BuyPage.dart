import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop/OrderConfirmPage.dart';
import 'package:shop/testHome.dart';
import 'Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/HomePage.dart';

String name, emailId, address, state, phoneNo, pincode;

class BuyPage extends StatefulWidget {
  String itemname, price;
  BuyPage({Key key, @required this.itemname, @required this.price})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => new _State(itemname, price);
}

class _State extends State<BuyPage> {
  String itemname, price;
  _State(this.itemname, this.price);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();

  //final auth = FirebaseAuth.instance;

  /*@override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  void toLogin() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  */
  void _showErrorDailog(String msg) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              title: Text('Password do not match'),
              content: Text(msg),
              actions: <Widget>[
                FlatButton(
                  child: Text('Retry'),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Text(
            "Quick Shop",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Enter your Details',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Customer Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
                  child: TextField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
                  child: TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
                  child: TextField(
                    controller: stateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'State',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
                  child: TextField(
                    controller: pincodeController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'pincode',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.black,
                      color: Colors.yellow.shade800,
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                            emailController.text.isNotEmpty &&
                            stateController.text.isNotEmpty &&
                            addressController.text.isNotEmpty &&
                            phoneNumberController.text.isNotEmpty &&
                            pincodeController.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      OrderConfirmPage(
                                        itemname: itemname,
                                        price: price,
                                        name: nameController.text,
                                        emailId: emailController.text,
                                        phoneNo: phoneNumberController.text,
                                        address: addressController.text,
                                        state: stateController.text,
                                        pincode: pincodeController.text,
                                      )));
                        }
                        else{
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => _buildPopupDialog(context),
                          );
                        }
                      },
                    )),
              ],
            )));
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Entry error!'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Fields cannot be empty"),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Theme.of(context).primaryColor,
        child: const Text('Close'),
      ),
    ],
  );
}
