import 'package:barizi_nashon_test/home/models/last_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

Widget lastWidget(LastModel model) {
  return Container(
    height: space193,
    width: space148,
    decoration: const BoxDecoration(
      color: lastContinerColor,
      borderRadius: BorderRadius.all(
        Radius.circular(
          space10,
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(model.image!),
        Padding(
          padding: const EdgeInsets.only(right:space16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.name!,
                style: ThemeText.blackTextTheme.copyWith(
                  color: lastTextColor,
                  fontSize: space13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                model.desc,
                style: ThemeText.blackTextTheme.copyWith(
                  color: lastTextColor2,
                  fontSize: space18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
