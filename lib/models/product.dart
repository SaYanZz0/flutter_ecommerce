
import 'package:flutter/material.dart';


class Product {
  late int id;
  late String title, description;
  late List<String> images;
  late double rating, price;
  late bool isFavourite, isPopular;
  late List<Color> colors;


  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description, required this.colors,
  });
  }
// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: 'Wear shorts that stand out. This lightweight pair is made from 100% recycled polyester, featuring breathable mesh with sweat-wicking Dri-FIT Technology. "Breakfast Club" graphics pay tribute to Michael Jordan',
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: 'The premier lab glove delivers excellent protection and exceptional tactility. Nitritex™ Omega Pro-tech XP™ Nitrile Gloves are non-sterile, extra-length laboratory gloves that are 100% latex free, thereby eliminating all risk of Type 1 latex allergic reactions.',
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bluetooth headset - LOGITECH ZONE 900",
    price: 20.20,
    description: 'Logitech Zone 900 gets you in your zone with premium audio for calls and music, active noise cancellation, and a noise-canceling mic. Use Logitech Unifying technology to connect up to six compatible peripherals with one receiver.',
    rating: 4.1,
    isFavourite: true,
  ),
];
