import 'package:barizi_nashon_test/home/models/category_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget categoryWidget(BuildContext context, CategoryModel category) {
  return Column(
    children: [
      Container(
        height: space42,
        width: space42,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: dividerColor,
          border: category.isSelected ? Border.all(color: borderColor) : null,
        ),
        child: category.isSelected == false
            ? Center(
                child: SvgPicture.asset(category.svg!),
              )
            : Container(
                height: space36,
                width: space36,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: borderColor,
                ),
                child: Center(
                  child: SvgPicture.asset(category.svg!),
                ),
              ),
      ),
      Text(
        category.name!,
        style: ThemeText.blackTextTheme.copyWith(
          color: categoryTextColor,
          fontSize: space10,
          fontWeight: FontWeight.w300,
        ),
      ),
    ],
  );
}
