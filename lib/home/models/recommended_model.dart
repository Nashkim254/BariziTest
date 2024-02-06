import 'dart:math';

import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:flutter/material.dart';

class RecommendedModel {
  RecommendedModel({
    required this.name,
    required this.image,
    required this.price,
  });
  String? name;
  String? image;
  String price;
}

class AppRecommendedModel {
  AppRecommendedModel({required this.color, required this.info});
  final Color color;
  RecommendedModel info;
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

List<AppRecommendedModel> getRecommended = [
  AppRecommendedModel(
    color: cardColor1,
    info: RecommendedModel(
      name: 'White fashion hoodie ',
      image: 'assets/images/hoodie.png',
      price: r'$ 29.00',
    ),
  ),
  AppRecommendedModel(
    color: cardColor2,
    info: RecommendedModel(
      name: 'Cotton T-shirt',
      image: 'assets/images/tshirt.png',
      price: r'$ 30.00',
    ),
  ),
  AppRecommendedModel(
    color: cardColor3,
    info: RecommendedModel(
      name: 'Cotton T-shirt',
      image: 'assets/images/tshirt.png',
      price: r'$ 50.79',
    ),
  ),
];
