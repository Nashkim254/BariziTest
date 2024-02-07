import 'package:barizi_nashon_test/home/components/category_component.dart';
import 'package:barizi_nashon_test/home/components/feature_componenet.dart';
import 'package:barizi_nashon_test/home/components/last_widget.dart';
import 'package:barizi_nashon_test/home/components/recommendedWidget.dart';
import 'package:barizi_nashon_test/home/models/category_model.dart';
import 'package:barizi_nashon_test/home/models/feature_model.dart';
import 'package:barizi_nashon_test/home/models/last_model.dart';
import 'package:barizi_nashon_test/home/models/recommended_model.dart';
import 'package:barizi_nashon_test/utils/carousel_controller.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:barizi_nashon_test/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final CarouselController _carouselController;
  bool isTheLastPage = false;
  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  void dispose() {
    _carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
                vertical: space40,
              ),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: _buildCategory(context),
            ),
            const SizedBox(
              height: space30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: Carousel(
                pages: onBoardigImages,
                controller: _carouselController,
                onPageChanged: ({required bool isLastPage}) => setState(() {
                  isTheLastPage = isLastPage;
                }),
              ),
            ),
            const SizedBox(
              height: space30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature Products',
                    style: ThemeText.blackTextTheme.copyWith(
                      fontSize: space20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Show all',
                      style: ThemeText.blackTextTheme.copyWith(
                        color: lightDarkColor,
                        fontSize: space13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: space12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: buildFeature(context),
            ),
            const SizedBox(
              height: space12,
            ),
            const BuildCollection(
              title: 'NEW COLLECTION',
              subtitle: 'HANG OUT\n& PARTY',
              image: 'assets/images/box.png',
              subtitleColor: lightDarkColor,
              height: space158,
            ),
            const SizedBox(
              height: space12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: ThemeText.blackTextTheme.copyWith(
                      fontSize: space20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Show all',
                      style: ThemeText.blackTextTheme.copyWith(
                        color: lightDarkColor,
                        fontSize: space13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: space12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: buildRecommended(context),
            ),
            const SizedBox(
              height: space12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Collection',
                    style: ThemeText.blackTextTheme.copyWith(
                      fontSize: space20,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Show all',
                      style: ThemeText.blackTextTheme.copyWith(
                        color: lightDarkColor,
                        fontSize: space13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: space12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: BuildCollection(
                title: 'Sale up to 40%',
                subtitle: 'FOR SLIM\n& BEAUTY',
                image: 'assets/images/collection.png',
                subtitleColor: Color(0xff777E90),
                height: space141,
              ),
            ),
            const SizedBox(
              height: space12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: BuildCollection(
                title: 'Summer Collection 2021',
                subtitle: 'Most sexy\n& fabulous\ndesign ',
                image: 'assets/images/summer.png',
                subtitleColor: Color(0xff353945),
                height: space141,
              ),
            ),
            const SizedBox(
              height: space12,
            ),
            Padding(
                 padding: const EdgeInsets.symmetric(
                horizontal: space24,
              ),
              child: buildLastContainer(),
            ),
             const SizedBox(
              height: space20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(BuildContext context) {
    return Row(
      children: List.generate(
        getCategories.length,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index != getCategories.length - 1 ? space8 : space0,
            ), // Add space between items
            child: categoryWidget(context, getCategories[index]),
          ),
        ),
      ),
    );
  }

  Widget buildFeature(
    BuildContext context,
  ) {
    return Row(
      children: List.generate(
        getFeatures.length,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index != getFeatures.length - 1 ? space8 : space0,
            ), // Add space between items
            child: featureWidget(context, getFeatures[index]),
          ),
        ),
      ),
    );
  }

  Widget buildLastContainer() {
     return Row(
      children: List.generate(
        getLastModel.length,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index != getLastModel.length - 1 ? space16 : space0,
            ), // Add space between items
            child: lastWidget(getLastModel[index]),
          ),
        ),
      ),
    );
  }

  Widget buildRecommended(
    BuildContext context,
  ) {
    return SizedBox(
      height: space66,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          return recommendedWidget(context, getRecommended[index]);
        },
        separatorBuilder: (context, int index) => const SizedBox(
          width: space12,
        ),
        itemCount: getRecommended.length,
      ),
    );
  }
}

class BuildCollection extends StatelessWidget {
  const BuildCollection({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.subtitleColor,
    required this.height,
    super.key,
  });
  final String title;
  final String subtitle;
  final String image;
  final Color subtitleColor;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.all(
              Radius.circular(space8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: ThemeText.blackTextTheme.copyWith(
                      color: boxTextColor,
                      fontSize: space12,
                      fontFamily: 'Product Sans Light',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: space12,
                  ),
                  Text(
                    subtitle,
                    style: ThemeText.blackTextTheme.copyWith(
                      color: subtitleColor,
                      fontSize: space20,
                      fontFamily: 'Product Sans Light',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                height: space132,
                width: space132,
                decoration: BoxDecoration(
                  color: containerColor.withOpacity(.5),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    height: space102,
                    width: space102,
                    decoration: const BoxDecoration(
                      color: containerColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: space40,
          bottom: space0,
          top: space0,
          child: Image.asset(image),
        ),
      ],
    );
  }
}
