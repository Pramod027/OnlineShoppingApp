import 'package:flutter/material.dart';

class CameraModel {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  CameraModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<CameraModel> camera = [
  CameraModel(
      id: 1,
      title: "Canon-eos-90d",
      price: 234,
      size: 12,
      description: 'Canon EOS 90d',
      image: "assets/images/electronic_devices/canon-eos-90d.jpg",
      color: Color(0xFF3D82AE)),
  CameraModel(
      id: 2,
      title: "Canon Powershot",
      price: 234,
      size: 8,
      description: 'Canon Powershot sx620',
      image: "assets/images/electronic_devices/canon-powershot-sx620.jpg",
      color: Color(0xFFD3A984)),
  CameraModel(
      id: 3,
      title: "Nikon Coolpix",
      price: 234,
      size: 10,
      description: 'Nikon Coolpix p1000',
      image: "assets/images/electronic_devices/nikon-coolpix-p1000.jpg",
      color: Color(0xFF989493)),
  CameraModel(
      id: 4,
      title: "Sony Alpha a9",
      price: 234,
      size: 11,
      description: 'Sony Alpha a9',
      image: "assets/images/electronic_devices/sony-alpha-a9.jpg",
      color: Color(0xFFE6B398)),
  CameraModel(
      id: 5,
      title: "Canon-eos-90d",
      price: 234,
      size: 12,
      description: 'Canon EOS 90d',
      image: "assets/images/electronic_devices/canon-eos-90d.jpg",
      color: Color(0xFF3D82AE)),
  CameraModel(
      id: 6,
      title: "Canon Powershot",
      price: 234,
      size: 8,
      description: 'Canon Powershot sx620',
      image: "assets/images/electronic_devices/canon-powershot-sx620.jpg",
      color: Color(0xFFD3A984)),
  CameraModel(
      id: 7,
      title: "Nikon Coolpix",
      price: 234,
      size: 10,
      description: 'Nikon Coolpix p1000',
      image: "assets/images/electronic_devices/nikon-coolpix-p1000.jpg",
      color: Color(0xFF989493)),
  CameraModel(
      id: 8,
      title: "Sony Alpha a9",
      price: 234,
      size: 11,
      description: 'Sony Alpha a9',
      image: "assets/images/electronic_devices/sony-alpha-a9.jpg",
      color: Color(0xFFE6B398)),
  CameraModel(
      id: 9,
      title: "Nikon Coolpix",
      price: 234,
      size: 10,
      description: 'Nikon Coolpix p1000',
      image: "assets/images/electronic_devices/nikon-coolpix-p1000.jpg",
      color: Color(0xFF989493)),
  CameraModel(
      id: 9,
      title: "Sony Alpha a9",
      price: 234,
      size: 11,
      description: 'Sony Alpha a9',
      image: "assets/images/electronic_devices/sony-alpha-a9.jpg",
      color: Color(0xFFE6B398)),
];
