import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:flutter/material.dart';

abstract class ThemeText {
  static const TextStyle blackTextTheme = TextStyle(
    fontFamily: 'Product Sans',
    color: blackColor,
    fontSize: 28,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle mediumBlackTextTheme = TextStyle(
    fontFamily: 'Product Sans',
    color: blackColor,
    fontSize: 18,
    height: 0.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle whiteTextTheme = TextStyle(
    fontFamily: 'Product Sans',
    color: whiteColor,
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle greyTextTheme = TextStyle(
    fontFamily: 'Product Sans',
    color: greyColor,
    fontSize: 14,
    height: 1.2,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle blueTextTheme = TextStyle(
    fontFamily: 'Product Sans',
    color: primaryColor,
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w700,
  );
}
