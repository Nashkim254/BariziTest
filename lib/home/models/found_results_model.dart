import 'dart:math';

import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:flutter/material.dart';

class FoundModel {
  FoundModel({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    this.oldPrice,
  });
  String? name;
  String? image;
  String price;
  String? oldPrice;
  String? rating;
}

class AppFoundModel {
  AppFoundModel({required this.color, required this.info});
  final Color color;
  FoundModel info;
}

//list of colors
List<Color> colorList = [
  cardColor1,
  cardColor2,
  cardColor3,
];
//get random color
Color getRandomColor(List<Color> colorList) {
  final random = Random();
  final index = random.nextInt(colorList.length);
  return colorList[index];
}

List<AppFoundModel> getResults = [
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Linen Dress',
      image: 'assets/images/result1.png',
      price: r'$ 52.00',
      oldPrice: r'$ 90.00',
      rating: '46',
    ),
  ),
  AppFoundModel(
    color: cardColor2,
    info: FoundModel(
      name: 'Filted Waist Dress',
      image: 'assets/images/result2.png',
      price: r'$ 47.99',
      oldPrice: r'$ 82.00',
      rating: '38',
    ),
  ),
  AppFoundModel(
    color: cardColor3,
    info: FoundModel(
      name: 'Maxi Dress',
      image: 'assets/images/result3.png',
      price: r'$ 50.79',
      rating: '50',
    ),
  ),
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Front Tie Mini Dress',
      image: 'assets/images/result4.png',
      price: r'$ 50.79',
      rating: '50',
    ),
  ),
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Ohara Dress',
      image: 'assets/images/result5.png',
      price: r'$ 85.00',
      rating: '50',
    ),
  ),
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Tie Back Mini Dress',
      image: 'assets/images/result6.png',
      price: r'$ 67.00',
      rating: '39',
    ),
  ),
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Leaves Green Dress',
      image: 'assets/images/result7.png',
      price: r'$ 64.00',
      rating: '83',
    ),
  ),
  AppFoundModel(
    color: cardColor1,
    info: FoundModel(
      name: 'Off Shoulder Dress',
      image: 'assets/images/result8.png',
      price: r'$ 78.00',
      rating: '25',
    ),
  ),
];
