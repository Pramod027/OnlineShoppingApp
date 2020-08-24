//import 'package:flutter/material.dart';
//import 'package:flutterappdesign/items/ladies.dart';
//
//import 'package:flutterappdesign/items/sports.dart';
//import 'package:flutterappdesign/shopping_app_components/body.dart';
//
//import 'package:flutterappdesign/shopping_app_components/details_screen.dart';
//
//import 'package:flutterappdesign/shopping_app_home_comp/constants.dart';
//import 'package:flutterappdesign/shopping_app_model/Product.dart';
//
//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: buildAppBar(),
//      body: Body(),
//    );
//  }
//
//  AppBar buildAppBar() {
//    return AppBar(
//      backgroundColor: Colors.white,
//      elevation: 0,
//      leading: IconButton(
//        icon: Image.asset("assets/icons/back.png"),
//        onPressed: () {},
//      ),
//      actions: <Widget>[
//        IconButton(
//          icon: Image.asset(
//            "assets/icons/search.png",
//            // By default our  icon color is white
//            color: kTextColor,
//          ),
//          onPressed: () {},
//        ),
//        IconButton(
//          icon: Image.asset(
//            "assets/icons/cart.png",
//            // By default our  icon color is white
//            color: kTextColor,
//          ),
//          onPressed: () {},
//        ),
//        SizedBox(width: kDefaultPaddin / 2)
//      ],
//    );
//  }
//}
//
//class Categories extends StatefulWidget {
//  @override
//  _CategoriesState createState() => _CategoriesState();
//}
//
//class _CategoriesState extends State<Categories> {
//  List<String> categories = [
//    "Hand bag",
//    "Dresses",
//    "Footwear",
//    "Dresses",
//    "Shoes"
//  ];
//  // By default our first item will be selected
//  int selectedIndex = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
//      child: SizedBox(
//        height: 25,
//        child: ListView.builder(
//          scrollDirection: Axis.horizontal,
//          itemCount: categories.length,
//          itemBuilder: (context, index) => buildCategory(index),
//        ),
//      ),
//    );
//  }
//
//  Widget buildCategory(int index) {
//    return GestureDetector(
//      onTap: () {
//        setState(() {
//          selectedIndex = index;
//          //index++;
//
//          if (selectedIndex == 1) {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => Babies()),
//            );
//          } else if (selectedIndex == 2) {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => Sports()),
//            );
//          }
//        });
//      },
//      child: Padding(
//        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Text(
//              categories[index],
//              style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: selectedIndex == index ? kTextColor : kTextLightColor,
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
//              height: 2,
//              width: 30,
//              color: selectedIndex == index ? Colors.black : Colors.transparent,
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class Body extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Padding(
//          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//          child: Text(
//            "Women",
//            style: Theme.of(context)
//                .textTheme
//                .headline5
//                .copyWith(fontWeight: FontWeight.bold),
//          ),
//        ),
//        Categories(),
//        Expanded(
//          child: Padding(
//            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//            child: GridView.builder(
//                itemCount: products.length,
//                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                  crossAxisCount: 2,
//                  mainAxisSpacing: kDefaultPaddin,
//                  crossAxisSpacing: kDefaultPaddin,
//                  childAspectRatio: 0.75,
//                ),
//                itemBuilder: (context, index) => ItemCard(
//                      product: products[index],
//                      press: () => Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                            builder: (context) => DetailsScreen(
//                              product: products[index],
//                            ),
//                          )),
//                    )),
//          ),
//        ),
//      ],
//    );
//  }
//}
//
//class ItemCard extends StatelessWidget {
//  final Product product;
//  final Function press;
//  const ItemCard({
//    Key key,
//    this.product,
//    this.press,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(
//      onTap: press,
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Expanded(
//            child: Container(
//              padding: EdgeInsets.all(kDefaultPaddin),
//              // For  demo we use fixed height  and width
//              // Now we dont need them
//              // height: 180,
//              // width: 160,
//              decoration: BoxDecoration(
//                color: product.color,
//                borderRadius: BorderRadius.circular(16),
//              ),
//              child: Hero(
//                tag: "${product.id}",
//                child: Image.asset(product.image),
//              ),
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//            child: Text(
//              // products is out demo list
//              product.title,
//              style: TextStyle(color: kTextLightColor),
//            ),
//          ),
//          Text(
//            "\$${product.price}",
//            style: TextStyle(fontWeight: FontWeight.bold),
//          )
//        ],
//      ),
//    );
//  }
//}
