import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesign/items/ladies.dart';
import 'package:flutterappdesign/items/electronic_devices.dart';
import 'package:flutterappdesign/items/sports.dart';
import 'package:flutterappdesign/shopping_app_home_comp/home_screen.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/CameraModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/MobileModel.dart';
import 'package:flutterappdesign/shopping_app_model/Product.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1555529669-2269763671c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1549464940-ee9b8c3baeda?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/photo-1575796398382-4e28b372a274?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
  'https://images.unsplash.com/photo-1574944985070-8f3ebc6b79d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1192&q=80',
  'https://images.unsplash.com/photo-1572804013427-4d7ca7268217?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80',
  'https://images.unsplash.com/photo-1527633412983-d80af308e660?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
];

void main() => runApp(CarouselDemo());

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarouselWithIndicatorDemo(),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
//                        child: Text(
//                          'No. ${imgList.indexOf(item)} image',
//                          style: TextStyle(
//                            color: Colors.white,
//                            fontSize: 20.0,
//                            fontWeight: FontWeight.bold,
//                          ),
//                        ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    )
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(title: Text('Carousel with indicator demo')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40.0),
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
          Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(
                              Icons.devices,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ElectronicDevices(mobile)),
                              );
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ElectronicDevices.a(camera));
                            },
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.tv),
                            onPressed: () {},
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.spa),
                            onPressed: () {},
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.toys),
                            onPressed: () {},
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.watch),
                            onPressed: () {},
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.people_outline),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ladies(products)),
                              );
                            },
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            icon: Icon(Icons.person_outline),
                            onPressed: () {},
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(25.0),
                          shadowColor: Colors.green,
                          elevation: 10.0,
                          child: IconButton(
                            hoverColor: Colors.red,
                            icon: Icon(Icons.child_care),
                            onPressed: () {},
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            iconSize: 20.0,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
            height: 125.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/exercise-bike.jpg')),
                        ),
                        height: 125.0,
                        width: 100.0,
                      ),

//                      Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Text('This is the text'),
//                          Text('This is the text'),
//                          SizedBox(
//                            height: 10.0,
//                          ),
//                          Container(
//                            height: 2.0,
//                            width: 75.0,
//                            color: Colors.black,
//                          ),
//                          SizedBox(
//                            height: 10.0,
//                          ),
//                        ],
//                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/smartwatch1.jpg')),
                        ),
                        height: 125.0,
                        width: 100.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/bag_1.png')),
                        ),
                        height: 125.0,
                        width: 100.0,
                      ),

//
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/glass1.jpg')),
                        ),
                        height: 125.0,
                        width: 100.0,
                      ),

//
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage('assets/images/cap2.jpg')),
                        ),
                        height: 125.0,
                        width: 100.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
//
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
