import 'package:flutter/material.dart';
import 'package:flutterappdesign/items/electronic_devices.dart';
import 'package:flutterappdesign/items/ladies.dart';
import 'package:flutterappdesign/screens/onboarding_screen.dart';
import 'package:flutterappdesign/screens/splash_screen.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/CameraModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/MobileModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/NewModel.dart';
import 'package:flutterappdesign/shopping_app_model/Product.dart';
import 'package:flutterappdesign/cart/cartmodel.dart';
import 'package:scoped_model/scoped_model.dart';

import 'details/total_price.dart';

void main() => runApp(MyApp(
      model: CartModel(),
    ));

class MyApp extends StatelessWidget {
  final CartModel model;

  MyApp({Key key, this.model}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        title: 'Flutter Login UI',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }

  Ladies ladies = new Ladies(products);
  ElectronicDevices devices = new ElectronicDevices(mobile);
  ElectronicDevices cam = new ElectronicDevices.a(camera);
}
