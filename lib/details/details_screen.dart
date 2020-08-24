import 'package:flutter/material.dart';
import 'package:flutterappdesign/details/total_price.dart';
import 'package:flutterappdesign/items/ladies.dart';
import 'package:flutterappdesign/shopping_app_model/Clothes.dart';
import 'package:flutterappdesign/shopping_app_model/Product.dart';

class DetalisScreen extends StatefulWidget {
  final Product index;
  const DetalisScreen({Key key, this.index}) : super(key: key);

  @override
  _DetalisScreenState createState() => _DetalisScreenState(index);
}

class _DetalisScreenState extends State<DetalisScreen> {
  @override
  final Product index;
  _DetalisScreenState(this.index);
  Widget build(BuildContext context) {
    int _item_count = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.all(5.0),
          icon: Image.asset(
            'assets/icons/back.png',
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Ladies(products)),
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
      body: Column(
        children: <Widget>[
          Text(
            index.title,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
//            padding: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                    child: Text(
                      'Price:\$ ${index.price.toString()}',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Hero(
                    tag: '${index.id}',
                    child: Image.asset(
                      index.image,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Image.asset(product.image),
          //Image.asset(product.image),
          Text(index.description),
          SizedBox(
            height: 100.0,
          ),
          FloatingActionButton(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.pink,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TotalPrice()));
            },
          )
        ],
      ),
    );
  }
}
