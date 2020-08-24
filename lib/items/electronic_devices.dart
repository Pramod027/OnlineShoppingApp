import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesign/details/camera_details.dart';
import 'package:flutterappdesign/details/mobile_details.dart';
import 'package:flutterappdesign/home_page/page_one.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/CameraModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/MobileModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/NewModel.dart';
import 'package:flutterappdesign/shopping_app_model/ElectronicDevices/SmartTvModel.dart';

class ElectronicDevices extends StatelessWidget {
  List<MobileModel> mobile_product;
  ElectronicDevices(this.mobile_product);
  List<CameraModel> camera_product;
  ElectronicDevices.a(this.camera_product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/back.png',
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarouselDemo()),
              );
            },
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Image.asset("assets/icons/search.png"),
                onPressed: () {},
              ),
            ),
//            IconButton(
//              icon: Image.asset("assets/icons/cart.png"),
//              onPressed: () {},
//            ),
            // SizedBox(width: kDefaultPaddin / 2)
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            initialIndex: 0,
            length: 4,
            child: Column(
              children: <Widget>[
                TabBar(
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(
                        child: Text(
                      "Mobiles",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                    Tab(
                        child: Text(
                      "Smart TV",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                    Tab(
                        child: Text(
                      "Cameras",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                    Tab(
                        child: Text(
                      "Laptops",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0),
                        itemCount: mobile_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Card(
                                margin: EdgeInsets.all(20.0),
                                elevation: 4.0,
                                child: ListTile(
                                  title: IconButton(
                                    iconSize: 90.0,
                                    icon: new Image.asset(
                                      mobile_product[i].image,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MobileDetails(
                                          mob_index: mobile_product[i],
                                        ),
                                      ),
                                    );
                                  },
                                  subtitle: new Text(
                                    "${mobile_product[i].title}\nPrice: \$${mobile_product[i].price}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0),
                        itemCount: mobile_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Card(
                                margin: EdgeInsets.all(20.0),
                                elevation: 4.0,
                                child: ListTile(
                                  title: IconButton(
                                    iconSize: 90.0,
                                    icon: new Image.asset(
                                      mobile_product[i].image,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MobileDetails(
                                          mob_index: mobile_product[i],
                                        ),
                                      ),
                                    );
                                  },
                                  subtitle: new Text(
                                    "${mobile_product[i].title}\nPrice: \$${mobile_product[i].price}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0),
                        itemCount: mobile_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Card(
                                margin: EdgeInsets.all(20.0),
                                elevation: 4.0,
                                child: ListTile(
                                  title: IconButton(
                                    iconSize: 90.0,
                                    icon: new Image.asset(
                                      mobile_product[i].image,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MobileDetails(
                                          mob_index: mobile_product[i],
                                        ),
                                      ),
                                    );
                                  },
                                  subtitle: new Text(
                                    "${mobile_product[i].title}\nPrice: \$${mobile_product[i].price}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 0.0),
                        itemCount: mobile_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Card(
                                margin: EdgeInsets.all(20.0),
                                elevation: 4.0,
                                child: ListTile(
                                  title: IconButton(
                                    iconSize: 90.0,
                                    icon: new Image.asset(
                                      mobile_product[i].image,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MobileDetails(
                                          mob_index: mobile_product[i],
                                        ),
                                      ),
                                    );
                                  },
                                  subtitle: new Text(
                                    "${mobile_product[i].title}\nPrice: \$${mobile_product[i].price}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
