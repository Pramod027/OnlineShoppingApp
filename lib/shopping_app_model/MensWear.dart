import 'package:flutter/material.dart';

class MeansWear {
  String image, title, description;
  int price, size, id;
  Color color;
  MeansWear({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<MeansWear> menswear = [
  MeansWear(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "maroon printed art skill saree",
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  MeansWear(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: "black white printed bandeau dress",
      image: "assets/images/dress/dress 2.jpg",
      color: Color(0xFFD3A984)),
  MeansWear(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: "multi color printed empire waist dress",
      image: "assets/images/dress/dress3.jpg",
      color: Color(0xFF989493)),
  MeansWear(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: "peach layered dresses",
      image: "assets/images/dress/dress4.jpg",
      color: Color(0xFFE6B398)),
  MeansWear(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "red high low dress",
      image: "assets/images/dress/dress5.jpg",
      color: Color(0xFFFB7883)),
  MeansWear(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "grey sequin party dress",
    image: "assets/images/dress/dress1.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MeansWear(
    id: 7,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "black printed a line dress",
    image: "assets/images/dress/dress7.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MeansWear(
    id: 8,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "wine front slit maxi dress",
    image: "assets/images/dress/dress8.jpg",
    color: Color(0xFFAEAEAE),
  ),
];
