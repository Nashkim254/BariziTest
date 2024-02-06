import 'package:barizi_nashon_test/home/models/recommended_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

Widget recommendedWidget(BuildContext context, AppRecommendedModel recommeded) {
  return Container(
    width: space213,
    height: space66,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(space8),
      ),
      border: Border.all(
        color: borderColor2,
      ),
    ),
    child: Row(
      children: [
        Container(
          width: space66,
          height: space66,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(space8),
            ),
            color: borderColor2,
          ),
          child: Center(
            child: Image.asset(
              recommeded.info.image!,
            ),
          ),
        ),
        const SizedBox(
          width: space12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              recommeded.info.name!,
              style: ThemeText.blackTextTheme.copyWith(
                color: categoryTextColor,
                fontSize: space12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              recommeded.info.price,
              style: ThemeText.blackTextTheme.copyWith(
                color: featureTextColor,
                fontSize: space16,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
