import 'package:flutter/material.dart';

class NewModel {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  NewModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<NewModel> model = [
  NewModel(
      id: 1,
      title: "HP ZBook 17",
      price: 234,
      size: 12,
      description: 'HP ZBook 17-g6',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF3D82AE)),
  NewModel(
      id: 2,
      title: "MacBook Pro",
      price: 234,
      size: 8,
      description: 'Apple MacBook Pro',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFFD3A984)),
  NewModel(
      id: 3,
      title: "HP ProBook",
      price: 234,
      size: 10,
      description: 'HP ProBook 440',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF989493)),
  NewModel(
      id: 4,
      title: "MI NoteBook 14",
      price: 234,
      size: 11,
      description: 'Xiomi Mi NoteBook14',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFFE6B398)),
  NewModel(
      id: 5,
      title: "Lenovo Thinkpad",
      price: 234,
      size: 12,
      description: 'Lenevo ThinkPad t490',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF3D82AE)),
  NewModel(
      id: 6,
      title: "HP ZBook 17",
      price: 234,
      size: 12,
      description: 'HP ZBook 17-g6',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF3D82AE)),
  NewModel(
      id: 7,
      title: "MacBook Pro",
      price: 234,
      size: 8,
      description: 'Apple MacBook Pro',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFFD3A984)),
  NewModel(
      id: 8,
      title: "HP ProBook",
      price: 234,
      size: 10,
      description: 'HP ProBook 440',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF989493)),
  NewModel(
      id: 10,
      title: "Lenovo Thinkpad",
      price: 234,
      size: 12,
      description: 'Lenevo ThinkPad t490',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFF3D82AE)),
  NewModel(
      id: 9,
      title: "MI NoteBook 14",
      price: 234,
      size: 11,
      description: 'Xiomi Mi NoteBook14',
      image: "assets/images/electronic_devices/xredmi-note-9.jpg",
      color: Color(0xFFE6B398)),
];
