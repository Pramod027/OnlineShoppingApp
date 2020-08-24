import 'package:flutter/material.dart';
import 'package:flutterappdesign/home_page/page_one.dart';
import 'file:///C:/Users/DELL/FlutterProjects/flutter_app_design/lib/details/details_screen.dart';
import 'package:flutterappdesign/shopping_app_model/Clothes.dart';
import 'package:flutterappdesign/shopping_app_model/Product.dart';

class Ladies extends StatefulWidget {
  final List<Product> lady_product;

  Ladies(this.lady_product);
  @override
  _LadiesState createState() => _LadiesState(lady_product);
}

class _LadiesState extends State<Ladies> {
  final List<Product> lady_product;

  _LadiesState(this.lady_product);

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
            IconButton(
              icon: Image.asset("assets/icons/search.png"),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset("assets/icons/cart.png"),
              onPressed: () {},
            ),
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
                      "Clothing",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      "Bags",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      "Shoes",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    )),
                    Tab(
                        child: Text(
                      "Accessories",
                      style: TextStyle(color: Colors.black, fontSize: 14),
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
                        itemCount: lady_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Hero(
                                tag: '${lady_product[i].id}',
                                child: Card(
                                  margin: EdgeInsets.all(20.0),
                                  elevation: 4.0,
                                  child: ListTile(
                                    title: IconButton(
                                      iconSize: 90.0,
                                      icon: new Image.asset(
                                        lady_product[i].image,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetalisScreen(
                                              index: lady_product[i]),
                                        ),
                                      );
                                    },
                                    subtitle: new Text(
                                      "${lady_product[i].title}\nPrice: \$${lady_product[i].price}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
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
                        itemCount: lady_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Hero(
                                tag: '${lady_product[i].id}',
                                child: Card(
                                  margin: EdgeInsets.all(20.0),
                                  elevation: 4.0,
                                  child: ListTile(
                                    title: IconButton(
                                      iconSize: 90.0,
                                      icon: new Image.asset(
                                        lady_product[i].image,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetalisScreen(
                                              index: lady_product[i]),
                                        ),
                                      );
                                    },
                                    subtitle: new Text(
                                      "${lady_product[i].title}\nPrice: \$${lady_product[i].price}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
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
                        itemCount: lady_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Hero(
                                tag: '${lady_product[i].id}',
                                child: Card(
                                  margin: EdgeInsets.all(20.0),
                                  elevation: 4.0,
                                  child: ListTile(
                                    title: IconButton(
                                      iconSize: 90.0,
                                      icon: new Image.asset(
                                        lady_product[i].image,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetalisScreen(
                                              index: lady_product[i]),
                                        ),
                                      );
                                    },
                                    subtitle: new Text(
                                      "${lady_product[i].title}\nPrice: \$${lady_product[i].price}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
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
                        itemCount: lady_product.length,
                        itemBuilder: (context, int i) => Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2,
                              child: Hero(
                                tag: '${lady_product[i].id}',
                                child: Card(
                                  margin: EdgeInsets.all(20.0),
                                  elevation: 4.0,
                                  child: ListTile(
                                    title: IconButton(
                                      iconSize: 90.0,
                                      icon: new Image.asset(
                                        lady_product[i].image,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetalisScreen(
                                              index: lady_product[i]),
                                        ),
                                      );
                                    },
                                    subtitle: new Text(
                                      "${lady_product[i].title}\nPrice: \$${lady_product[i].price}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
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
