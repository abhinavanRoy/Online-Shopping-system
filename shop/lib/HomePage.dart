import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    _home(),
    _myCart(),
    _myOrder(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail),
              title: new Text('My Cart'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('My Orders'))
          ],
        ));
  }
}

Widget _home() {
  return Scaffold(
    appBar: AppBar(
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: handleClick,
          itemBuilder: (BuildContext context) {
            return {'Logout'}.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
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
    body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 450.0,
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
                    Image.network(
                      'https://picsum.photos/250?image=9',
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 150.0,
                                width: 310.0,
                                color: Colors.orange.shade50,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
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
  );
}

void handleClick(String value) {
  switch (value) {
    case 'Logout':
      break;
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
