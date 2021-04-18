import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/OrderPlacedPage.dart';

// ignore: must_be_immutable
class OrderConfirmPage extends StatefulWidget {
  String itemname, price, name, emailId, address, state, phoneNo, pincode,paymentMethod;
  OrderConfirmPage({
    Key key,
    @required this.itemname,
    @required this.price,
    @required this.name,
    @required this.emailId,
    @required this.phoneNo,
    @required this.address,
    @required this.state,
    @required this.pincode,
    @required this.paymentMethod,
  }) : super(key: key);
  @override
  _OrderConfirmPageState createState() => _OrderConfirmPageState(
      itemname, price, name, emailId, phoneNo, address, state, pincode,paymentMethod);
}

class _OrderConfirmPageState extends State<OrderConfirmPage> {
  final ScrollController _scrollController = ScrollController();
  String itemname, price, name, emailId, address, state, phoneNo, pincode,paymentMethod;
  _OrderConfirmPageState(this.itemname, this.price, this.name, this.emailId,
      this.phoneNo, this.address, this.state, this.pincode,this.paymentMethod);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
      body: Container(
        height: height,

        width: width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                'Your order details',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),

            Expanded(
              child: Container(

                height: height / 1.3,
                width: width,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Customer Name: " + "$name",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Item to be ordered:  " + "$itemname",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Amount:  " + "$price",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Customer Email ID:",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    Text(
                      "$emailId",
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Customer Phone no:",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    Text(
                      "$phoneNo",
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Shipping Address:",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "$address",
                        style: TextStyle(
                          fontSize: 21,
                        ),
                      ),
                    ),

                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Pin Code: " + "$pincode",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),

                    SizedBox(
                      width: width / 1.12,
                      child: Divider(
                        thickness: 2,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Payment mode: " + "$paymentMethod",
                        style: TextStyle(fontSize: 21),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 40,
                      width: width /3,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(_createRoute());
                        },
                        child: Text("Place Order",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        ),
                      ),
                    ),
                  ],
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
    pageBuilder: (context, animation, secondaryAnimation) => OrderPlaced(),
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
