import 'package:barizi_nashon_test/home/components/category_component.dart';
import 'package:barizi_nashon_test/home/models/category_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: space16, vertical: space20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/svg/menu.svg',
                      ),
                    ),
                    Text(
                      'GemStore',
                      style: ThemeText.blackTextTheme.copyWith(
                        color: blackColor,
                        fontSize: space20,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/svg/Bell_pin.svg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: space20,
                ),
                Expanded(
                  child: _buildCategory(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, int index) => categoryWidget(
        context,
        getCategories[index],
      ),
      separatorBuilder: (context, int index) => const SizedBox(
        width: space8,
      ),
      itemCount: getCategories.length,
    );
  }
}
