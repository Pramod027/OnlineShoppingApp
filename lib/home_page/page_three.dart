import 'package:flutter/material.dart';
import 'package:flutterappdesign/cart/cartmodel.dart';
import 'package:scoped_model/scoped_model.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //routes: {'/cart': (context) => TotalPrice()},
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("Cart"),
            //to clear all the items of cart
//            actions: <Widget>[
//              FlatButton(
//                  child: Text(
//                    "Clear",
//                    style: TextStyle(color: Colors.white),
//                  ),
//                  onPressed: () =>
//                      ScopedModel.of<CartModel>(context).clearCart())
//            ],
          ),
          body: ScopedModel.of<CartModel>(context, rebuildOnChange: true)
                      .cart
                      .length ==
                  0
              ? Center(
                  child: Text("No items in Cart"),
                )
              : Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: ScopedModel.of<CartModel>(context,
                                rebuildOnChange: true)
                            .total,
                        itemBuilder: (context, index) {
                          return ScopedModelDescendant<CartModel>(
                            builder: (context, child, model) {
                              return Card(
                                child: ListTile(
                                  title: Text(
                                    model.cart[index].title,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400),
                                  ),
//                                subtitle: Text(
//                                    model.cart[index].qty.toString() +
//                                        " x " +
//                                        model.cart[index].price.toString() +
//                                        " = " +
//                                        (model.cart[index].qty *
//                                                model.cart[index].price)
//                                            .toString()),
                                  trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Qty: " +
                                              model.cart[index].qty.toString() +
                                              "  " +
                                              " " +
                                              " " +
                                              (model.cart[index].qty *
                                                      model.cart[index].price)
                                                  .toString(),
                                          style: TextStyle(fontSize: 18.0),
                                        ),

//                                      IconButton(
//                                        icon: Icon(Icons.add),
//                                        onPressed: () {
//                                          model.updateProduct(model.cart[index],
//                                              model.cart[index].qty + 1);
//                                          // model.removeProduct(model.cart[index]);
//                                        },
//                                      ),
//                                      IconButton(
//                                        icon: Icon(Icons.remove),
//                                        onPressed: () {
//                                          model.updateProduct(model.cart[index],
//                                              model.cart[index].qty - 1);
//                                          // model.removeProduct(model.cart[index]);
//                                        },
//                                      ),
                                      ]),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Total: \$ " +
                              ScopedModel.of<CartModel>(context,
                                      rebuildOnChange: true)
                                  .totalCartValue
                                  .toString() +
                              "",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Colors.yellow[900],
                          textColor: Colors.white,
                          elevation: 0,
                          child: Text("BUY NOW"),
                          onPressed: () {},
                        ))
                  ]))),
    );
  }
}
