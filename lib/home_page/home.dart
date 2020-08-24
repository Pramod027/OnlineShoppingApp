import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesign/home_page/page_five.dart';
import 'package:flutterappdesign/home_page/page_one.dart';
import 'package:flutterappdesign/home_page/page_three.dart';
import 'package:flutterappdesign/home_page/page_two.dart';
import 'package:flutterappdesign/home_page/user_profile.dart';

//Remember the number of nav bar icon must match the no of pages/ dart files

void main() {
  runApp(MyHompage());
}

class MyHompage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CarouselDemo(),
    PageTwo(),
    PageThree(),
    ProfilePage(),
    // PageFive(),
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        // key: _buttonNavigationKey,
        index: _currentIndex,
        height: 50.0,
        onTap: onTappedBar,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(Icons.message, size: 30),
          Icon(Icons.shopping_cart, size: 30),
          Icon(Icons.account_box, size: 30),
          // Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
      body: _children[_currentIndex],
    );
  }
}
