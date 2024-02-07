import 'package:barizi_nashon_test/home/models/found_results_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

Widget buildResults(AppFoundModel results) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: space141,
        decoration: BoxDecoration(
          color: results.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(space10),
          ),
        ),
        child: Center(
          child: Image.asset(
            results.info.image!,
            fit: BoxFit.cover,
            height: space186,
            width: space141,
          ),
        ),
      ),
      const SizedBox(
        height: space5,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            results.info.name!,
            style: ThemeText.blackTextTheme.copyWith(
              color: blackColor,
              fontSize: space12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: space5,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: results.info.price,
                  style: ThemeText.blackTextTheme.copyWith(
                    color: boxText2Color,
                    fontSize: space16,
                  ),
                ),
                TextSpan(
                  text: results.info.oldPrice,
                  style: ThemeText.blackTextTheme.copyWith(
                    color: amtColor,
                    fontSize: space12,
                    fontFamily: 'Product Sans Medium',
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: space5,
          ),
          Row(
            children: [
              Image.asset('assets/images/rating.png'),
              Text(
                '(${results.info.rating})',
                style: ThemeText.blackTextTheme.copyWith(
                  color: boxTextColor,
                  fontSize: space10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
