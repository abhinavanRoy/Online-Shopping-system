import 'package:flutter/material.dart';

class OrderConfirmPage extends StatefulWidget {
  String itemname, price, name, emailId, address, state, phoneNo,pincode;
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

  }) : super(key: key);
  @override
  _OrderConfirmPageState createState() => _OrderConfirmPageState(itemname, price, name, emailId,phoneNo, address, state,pincode);
}

class _OrderConfirmPageState extends State<OrderConfirmPage> {
  String itemname, price, name, emailId, address, state, phoneNo,pincode;
  _OrderConfirmPageState(this.itemname,this.price,this.name,this.emailId,this.phoneNo,this.address,this.state,this.pincode);
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              'Your order details',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                height: 600.0,
                margin: const EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.yellow.shade50,
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
                                  height: 550.0,
                                  width: 310.0,
                                  color: Colors.yellow.shade50,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0.0, 140.0, 0.0),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Product name: " + "$itemname",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Customer Name: " + "$name",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Email: " + "$emailId",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Phone No: " + "$phoneNo",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Address: " + "$address",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "State: " + "$state",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Pincode: " + "$pincode",
                                            style: TextStyle(
                                              fontSize: 20.0,
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
    );
  }
}
