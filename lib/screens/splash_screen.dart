import 'package:flutter/material.dart';
import 'package:flutterappdesign/utilities/constants.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:async';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => OnboardingScreen()));
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.green, Colors.yellow]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: SizedBox(
                  child: Icon(
                    Icons.shopping_cart,
                    size: 150.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                period: Duration(milliseconds: 1500),
                baseColor: Color(0xff7f00ff),
                highlightColor: Color(0xffe100ff),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Online Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        fontFamily: 'Playfair'),
                  ),
                ),
              ),

//                  Center(
//                    child: Text(
//                      'Online Mart',
//                      style: TextStyle(
//                          fontSize: 34.0,
//                          color: Colors.lightGreen[900],
//                          fontWeight: FontWeight.bold,
//                          fontFamily: 'Playfair'),
//                    ),
//                  ),
              SizedBox(
                height: 200,
              ),
              CircularProgressIndicator()
            ],
          ),
        ],
      ),
    ));
  }
}
