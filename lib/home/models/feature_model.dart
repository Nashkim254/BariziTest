import 'dart:math';

import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:flutter/material.dart';

class FeatureModel {
  FeatureModel({
    required this.name,
    required this.image,
    required this.price,
  });
  String? name;
  String? image;
  String price;
}

class AppFeatureModel {
  AppFeatureModel({required this.color, required this.info});
  final Color color;
  FeatureModel info;
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

List<AppFeatureModel> getFeatures = [
  AppFeatureModel(
    color: cardColor1,
    info: FeatureModel(
      name: 'Turtleneck Sweater ',
      image: 'assets/images/sweater.png',
      price: r'$ 39.99',
    ),
  ),
  AppFeatureModel(
    color: cardColor2,
    info: FeatureModel(
      name: 'Long Sleeve Dress',
      image: 'assets/images/dress.png',
      price: r'$ 45.00',
    ),
  ),
  AppFeatureModel(
    color: cardColor3,
    info: FeatureModel(
      name: 'Sportwear Set',
      image: 'assets/images/dress.png',
      price: r'$ 50.79',
    ),
  ),
];
