//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutterappdesign/cart/cartmodel.dart';
//import 'package:flutterappdesign/details/total_price.dart';
//import 'package:flutterappdesign/items/electronic_devices.dart';
//import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/CameraModel.dart';
//import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/MobileModel.dart';
//import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/NewModel.dart';
//import 'package:scoped_model/scoped_model.dart';
//
//class CameraDetails extends StatefulWidget {
//  final CameraModel cam_index;
//
//  const CameraDetails({Key key, this.cam_index}) : super(key: key);
//  @override
//  _CameraDetailsState createState() => _CameraDetailsState(cam_index);
//}
//
//class _CameraDetailsState extends State<CameraDetails> {
//  @override
//  final CameraModel cam_index;
//  _CameraDetailsState(this.cam_index);
//
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        elevation: 0,
//        leading: IconButton(
//          padding: EdgeInsets.all(5.0),
//          icon: Image.asset(
//            'assets/icons/back.png',
//            color: Colors.black,
//          ),
//          onPressed: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => ElectronicDevices.a(camera)),
//            );
//          },
//        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Image.asset("assets/icons/search.png"),
////            onPressed: () {
////              Navigator.pushNamed(context, '/cart');
////            },
//          ),
//          IconButton(
//              icon: Image.asset("assets/icons/cart.png"),
//              onPressed: () {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => TotalPrice()),
//                );
//              }),
//          // SizedBox(width: kDefaultPaddin / 2)
//        ],
//      ),
//      body: SingleChildScrollView(
//        scrollDirection: Axis.vertical,
//        child:
//            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
//          return Container(
//            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
//            child: Column(
//              children: <Widget>[
//                Text(
//                  cam_index.title,
//                  style: TextStyle(
//                    fontSize: 24,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//                Container(
//                  margin: EdgeInsets.only(left: 20),
////            padding: EdgeInsets.all(20.0),
//                  width: MediaQuery.of(context).size.width,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      SizedBox(
//                          width: MediaQuery.of(context).size.width * 0.12,
//                          child: Text(
//                            'Price:\$ ${cam_index.price.toString()}',
//                            style: TextStyle(fontSize: 16, color: Colors.black),
//                          )),
//                      SizedBox(
//                        height: MediaQuery.of(context).size.height * 0.4,
//                        width: MediaQuery.of(context).size.width * 0.7,
//                        child: Hero(
//                          tag: '${cam_index.id}',
//                          child: Image.asset(
//                            cam_index.image,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//                //Image.asset(product.image),
//                //Image.asset(product.image),
//                Text(cam_index.description),
//                FloatingActionButton(
//                    child: Icon(
//                      Icons.shopping_cart,
//                      color: Colors.pink,
//                    ),
//                    onPressed: () => model.addProduct(cam_index)),
//              ],
//            ),
//          );
//        }),
//      ),
//    );
//  }
//}
