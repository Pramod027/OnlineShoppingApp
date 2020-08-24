import 'package:flutter/material.dart';

class SmartTvModel {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  SmartTvModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<SmartTvModel> smartTv = [
  SmartTvModel(
      id: 1,
      title: "Oneplus TV",
      price: 234,
      size: 12,
      description: 'OnePlus TV',
      image: "assets/images/electronic_devices/oneplus-tv.jpg",
      color: Color(0xFF3D82AE)),
  SmartTvModel(
      id: 2,
      title: "Sony Bravia",
      price: 234,
      size: 8,
      description: 'Sony Bravia 4k android Tv',
      image: "assets/images/electronic_devices/canon-powershot-sx620.jpg",
      color: Color(0xFFD3A984)),
  SmartTvModel(
      id: 3,
      title: "TCL 8K",
      price: 234,
      size: 10,
      description: 'TCL 8K QLED Android Tv',
      image: "assets/images/electronic_devices/tcl-8k-qled-android-tv.jpg",
      color: Color(0xFF989493)),
  SmartTvModel(
      id: 4,
      title: "Oneplus TV",
      price: 234,
      size: 12,
      description: 'OnePlus TV',
      image: "assets/images/electronic_devices/oneplus-tv.jpg",
      color: Color(0xFF3D82AE)),
  SmartTvModel(
      id: 5,
      title: "Sony Bravia",
      price: 234,
      size: 8,
      description: 'Sony Bravia 4k android Tv',
      image: "assets/images/electronic_devices/canon-powershot-sx620.jpg",
      color: Color(0xFFD3A984)),
  SmartTvModel(
      id: 6,
      title: "TCL 8K",
      price: 234,
      size: 10,
      description: 'TCL 8K QLED Android Tv',
      image: "assets/images/electronic_devices/tcl-8k-qled-android-tv.jpg",
      color: Color(0xFF989493)),
  SmartTvModel(
      id: 7,
      title: "Oneplus TV",
      price: 234,
      size: 12,
      description: 'OnePlus TV',
      image: "assets/images/electronic_devices/oneplus-tv.jpg",
      color: Color(0xFF3D82AE)),
  SmartTvModel(
      id: 8,
      title: "Sony Bravia",
      price: 234,
      size: 8,
      description: 'Sony Bravia 4k android Tv',
      image: "assets/images/electronic_devices/canon-powershot-sx620.jpg",
      color: Color(0xFFD3A984)),
  SmartTvModel(
      id: 9,
      title: "TCL 8K",
      price: 234,
      size: 10,
      description: 'TCL 8K QLED Android Tv',
      image: "assets/images/electronic_devices/tcl-8k-qled-android-tv.jpg",
      color: Color(0xFF989493)),
  SmartTvModel(
      id: 10,
      title: "TCL 8K",
      price: 234,
      size: 10,
      description: 'TCL 8K QLED Android Tv',
      image: "assets/images/electronic_devices/tcl-8k-qled-android-tv.jpg",
      color: Color(0xFF989493)),
];
