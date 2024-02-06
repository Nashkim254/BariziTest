import 'package:barizi_nashon_test/home/models/feature_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

Widget featureWidget(BuildContext context, AppFeatureModel feature) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: space172,
        width: space126,
        decoration: BoxDecoration(
          color: feature.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(space8),
          ),
        ),
        child: Center(
          child: Image.asset(
            feature.info.image!,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        height: space8,
      ),
      Text(
        feature.info.name!,
        style: ThemeText.blackTextTheme.copyWith(
          color: categoryTextColor,
          fontSize: space12,
          fontWeight: FontWeight.w500,
        ),
      ),
      Text(
        feature.info.price,
        style: ThemeText.blackTextTheme.copyWith(
          color: featureTextColor,
          fontSize: space16,
        ),
      ),
    ],
  );
}
