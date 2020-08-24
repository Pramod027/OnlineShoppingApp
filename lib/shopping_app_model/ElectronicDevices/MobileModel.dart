import 'package:flutter/material.dart';

class MobileModel {
  String image, title, description;
  int price, size, id, qty;
  Color color;
  MobileModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.qty,
  });
}

//assets/images/xsamsung-galaxy-s20-ultra.jpg
List<MobileModel> mobile = [
  MobileModel(
      id: 1,
      title: "Galaxy S20",
      price: 120,
      size: 12,
      description:
          'Samsung Galaxy S20 5G smartphone was launched on 11th February 2020. The phone comes with a 6.20-inch touchscreen display with a resolution of 1440x3200 pixels and an aspect ratio of 20:9. Samsung Galaxy S20 5G is powered by a 2GHz octa-core Samsung Exynos 990 processor that features 2 cores clocked at 2.73GHz, 2 cores clocked at 2.5GHz and 4 cores clocked at 2GHz. It comes with 12GB of RAM. The Samsung Galaxy S20 5G runs Android 10 and is powered by a 4000mAh non-removable battery. The Samsung Galaxy S20 5G supports wireless charging, as well as proprietary fast charging.',
      image: "assets/images/electronic_devices/xsamsung-galaxy-s20.jpg",
      qty: 1,
      color: Color(0xFF3D82AE)),
  MobileModel(
      id: 2,
      title: "Galaxy M11",
      price: 234,
      size: 8,
      description:
          ' Samsung Galaxy M11 smartphone was launched on 30th March 2020. The phone comes with a 6.40-inch touchscreen display with a resolution of 720x1560 pixels. Samsung Galaxy M11 is powered by a 1.8GHz octa-core Qualcomm Snapdragon 450 processor. It comes with 3GB of RAM. The Samsung Galaxy M11 runs Android and is powered by a 5000mAh non-removable battery. The Samsung Galaxy M11 supports proprietary fast charging.',
      qty: 1,
      image: "assets/images/electronic_devices/xapple-iphone-11-pro.jpg",
      color: Color(0xFFD3A984)),
  MobileModel(
      id: 3,
      title: "Galaxy A21s",
      price: 234,
      size: 10,
      description:
          ' The phone comes with a 6.50-inch touchscreen display. Samsung Galaxy A21 comes with 3GB of RAM. The Samsung Galaxy A21 runs Android 10 and is powered by a 4000mAh non-removable battery. ... Sensors on the phone include fingerprint sensor.',
      qty: 1,
      image: "assets/images/electronic_devices/samsung-galaxy-a21s.jpg",
      color: Color(0xFF989493)),
  MobileModel(
      id: 4,
      title: "Iphone6 plus",
      price: 234,
      qty: 1,
      size: 11,
      description:
          'The phone comes with a 5.50-inch touchscreen display with a resolution of 1080x1920 pixels at a pixel density of 401 pixels per inch (ppi). Apple iPhone 6s Plus is powered by an one-core Apple A9 processor. It comes with 2GB of RAM. The Apple iPhone 6s Plus runs iOS 9 and is powered by a 2750mAh non-removable battery.',
      image: "assets/images/electronic_devices/xapple-iphone-6-plus.jpg",
      color: Color(0xFFE6B398)),
  MobileModel(
      id: 5,
      title: "Iphone 11 Pro",
      price: 154,
      size: 12,
      qty: 1,
      description:
          'iPhone 11 Pro smartphone was launched on 10th September 2019. The phone comes with a 5.80-inch touchscreen display with a resolution of 1125x2436 pixels at a pixel density of 458 pixels per inch (ppi). iPhone 11 Pro is powered by a hexa-core Apple A13 Bionic processor. It comes with 4GB of RAM. The iPhone 11 Pro runs iOS 13 and is powered by a 3046mAh non-removable battery. The iPhone 11 Pro supports wireless charging, as well as proprietary fast charging.',
      image: "assets/images/electronic_devices/xapple-iphone-11-pro.jpg",
      color: Color(0xFFFB7883)),
  MobileModel(
    id: 6,
    title: "Redmi Node 9",
    price: 234,
    size: 12,
    qty: 1,
    description:
        'Redmi Note 9 smartphone was launched on 30th April 2020. The phone comes with a 6.53-inch touchscreen display with a resolution of 1080x2340 pixels and an aspect ratio of 19.5:9. Redmi Note 9 is powered by a 1.8GHz octa-core MediaTek Helio G85 processor that features 6 cores clocked at 1.8GHz and 2 cores clocked at 2GHz. It comes with 4GB of RAM. The Redmi Note 9 runs Android 10 and is powered by a 5020mAh battery. The Redmi Note 9 supports proprietary fast charging.',
    image: "assets/images/electronic_devices/xredmi-note-9.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MobileModel(
    id: 7,
    qty: 1,
    title: "Redmi Node 9",
    price: 114,
    size: 12,
    description: 'Redemi Node 9',
    image: "assets/images/electronic_devices/xredmi-note-9.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MobileModel(
    id: 8,
    qty: 1,
    title: "Redmi Node 9",
    price: 234,
    size: 12,
    description: 'Redemi Node 9',
    image: "assets/images/electronic_devices/xredmi-note-9.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MobileModel(
    id: 9,
    qty: 1,
    title: "Redmi Node 9",
    price: 984,
    size: 12,
    description: 'Redemi Node 9',
    image: "assets/images/electronic_devices/xredmi-note-9.jpg",
    color: Color(0xFFAEAEAE),
  ),
  MobileModel(
    id: 10,
    qty: 1,
    title: "Redmi Node 9",
    price: 234,
    size: 12,
    description: 'Redemi Node 9',
    image: "assets/images/electronic_devices/xredmi-note-9.jpg",
    color: Color(0xFFAEAEAE),
  ),
];
