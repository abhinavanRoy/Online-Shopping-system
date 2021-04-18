import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/BuyPage.dart';

String item1 = "Iphone 12 Pro";
String item2 = "Iphone 12 Pro Max";
String item3 = "Samsung Galaxy S21 Ultra";
String item4 = "One Plus 8 Pro";
String itemname,price;

var count = 0;
class rootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _rootPageState();
}

class _rootPageState extends State<rootPage> {
  final ScrollController _scrollController = ScrollController();
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
          padding: EdgeInsets.all(8.0),

          child: Scrollbar(
            isAlwaysShown: false,
            controller: _scrollController,
            child: ListView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                StreamBuilder(
                  stream:
                      FirebaseFirestore.instance.collection('Images').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return Column(
                      children: snapshot.data.docs.map((document) {
                        return itemCard1(document,context);
                      }).toList(),
                    );

                    /*Column(
                      children:<Widget> [
                      Text(snapshot.data.docs[0]['thought'].toString()),
                      ],
                    );*/
                  },
                ),
                StreamBuilder(
                  stream:
                  FirebaseFirestore.instance.collection('Images').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return Column(
                      children: snapshot.data.docs.map((document) {
                        return itemCard2(document,context);
                      }).toList(),
                    );

                    /*Column(
                      children:<Widget> [
                      Text(snapshot.data.docs[0]['thought'].toString()),
                      ],
                    );*/
                  },
                ),
                StreamBuilder(
                  stream:
                  FirebaseFirestore.instance.collection('Images').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return Column(
                      children: snapshot.data.docs.map((document) {
                        return itemCard3(document,context);
                      }).toList(),
                    );

                    /*Column(
                      children:<Widget> [
                      Text(snapshot.data.docs[0]['thought'].toString()),
                      ],
                    );*/
                  },
                ),
                StreamBuilder(
                  stream:
                  FirebaseFirestore.instance.collection('Images').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return Column(
                      children: snapshot.data.docs.map((document) {
                        return itemCard4(document,context);
                      }).toList(),
                    );

                    /*Column(
                      children:<Widget> [
                      Text(snapshot.data.docs[0]['thought'].toString()),
                      ],
                    );*/
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

Widget itemCard1(document,context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 370.0,
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color(0xFFFFD740),
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
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 5.0, 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 450.0,
                          width: 310.0,
                          color: Color(0xFFFFD740),
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  document['iphone_12'],
                                ),

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
                                  "MRP: ₹ 20,000",
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
                                    onPressed: () {

                                      itemname = "Iphone 12";
                                      price = "₹ 20,000";
                                      Navigator.of(context).push(_createRoute());


                                    },
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
  );
}
Widget itemCard2(document,context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 500.0,
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.deepOrangeAccent,
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
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 5.0, 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 470.0,
                          width: 310.0,
                          color: Colors.deepOrangeAccent,
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  document['iphone_12_pro_max'],
                                ),

                                Text(
                                  "$item2",
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
                                  "MRP: ₹ 20,000",
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
                                    onPressed: () {

                                      itemname = "Iphone 12 Pro Max";
                                      price = "₹ 20,000";
                                      Navigator.of(context).push(_createRoute());
                                    },
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
  );
}
Widget itemCard3(document,context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 425.0,
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Color(0xFFFFD740),
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
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 5.0, 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 470.0,
                          width: 310.0,
                          color: Color(0xFFFFD740),
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  document['samsung_s21_ultra'],
                                ),

                                Text(
                                  "$item3",
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
                                  "MRP: ₹ 20,000",
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
                                    onPressed: () {

                                      itemname = "Samsung S21 Ultra";
                                      price = "₹ 20,000";
                                      Navigator.of(context).push(_createRoute());
                                    },
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
  );
}
Widget itemCard4(document,context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        height: 500.0,
        margin: const EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.deepOrangeAccent,
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
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 5.0, 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 470.0,
                          width: 310.0,
                          color: Colors.deepOrangeAccent,
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                  document['one_plus_8_pro'],
                                ),

                                Text(
                                  "$item4",
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
                                  "MRP: ₹ 20,000",
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
                                    onPressed: () {

                                      itemname = "OnePlus 8 Pro";
                                      price = "₹ 20,000";
                                      Navigator.of(context).push(_createRoute());
                                    },
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
  );
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BuyPage(itemname: itemname,price: price),
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

