import 'package:barizi_nashon_test/utils/carousel_controller.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  Carousel({required this.pages, this.controller, this.onPageChanged, super.key});
  final List<Widget> pages;
  double height = space168;
  final CarouselController? controller;
  Duration nextPageDuration = const Duration(milliseconds: 10000);
  final void Function({required bool isLastPage})? onPageChanged;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    widget.controller?.addListener(_handleNextPage);
    _pageController.addListener(_handlePageChanged);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Implement the UI representation of the
    // carousel using PageView and indicators
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: widget.height,
              width: getScreenWidth(context),
              child: PageView(
                padEnds: false,
                controller: _pageController,
                children: widget.pages,
              ),
            ),
            Positioned(
              right: space30,
              top: space20,
              child: Text(
                'Autumn\nCollection\n2021',
                style: ThemeText.whiteTextTheme.copyWith(
                  fontSize: space22,
                ),
              ),
            ),
            Positioned(
              bottom: space20,
              left: space0,
              right: space0,
              child: _CarouselRectangle(
                rectangleNumber: widget.pages.length,
                currentRectangle:
                    _pageController.positions.isEmpty ? 0 : _pageController.page!.round(),
                onRectangleTapped: _animateToPage,
              ),
            ),
          ],
        ),
      ],
    );
  }
  // Previous code...

  // Method to handle moving to the next page in the carousel
  void _handleNextPage() {
    _pageController.nextPage(
      duration: widget.nextPageDuration,
      curve: Curves.easeIn,
    );
  }

  // Method to animate to a specific page when an indicator is tapped
  void _animateToPage(int page) {
    _pageController.animateToPage(
      page,
      duration: widget.nextPageDuration,
      curve: Curves.easeIn,
    );
  }

  // Method to update the UI when the page changes
  void _handlePageChanged() {
    setState(() {});
    widget.onPageChanged!(
      isLastPage: _pageController.page!.round() == widget.pages.length - 1,
    );
  }
  // Add methods to handle carousel interactions, such as swiping and tapping indicators
}

class _CarouselRectangle extends StatelessWidget {
  _CarouselRectangle(
      {required this.rectangleNumber,
      required this.currentRectangle,
      required this.onRectangleTapped});
  final int rectangleNumber;
  final int currentRectangle;
  double rectangleSize = space10;
  final Function onRectangleTapped;

  @override
  Widget build(BuildContext context) {
    // Implement the UI representation of the page indicators
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: Iterable.generate(rectangleNumber).map((i) {
        // Create the individual rectangle
        //indicator with GestureDetector for tapping
        return Container(
          padding: const EdgeInsets.all(5),
          child: (i == currentRectangle)
              ? Container(
                  height: rectangleSize,
                  width: rectangleSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: whiteColor),
                    color: Colors.transparent,
                  ),
                  child: GestureDetector(
                    onTap: () => onRectangleTapped(i),
                    child: Container(
                      margin: const EdgeInsets.all(
                        space1,
                      ),
                      height: space4,
                      width: space4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                    ),
                  ),
                )
              : Container(
                  height: space4,
                  width: space4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: GestureDetector(
                    onTap: () => onRectangleTapped(i),
                  ),
                ),
        );
      }).toList(),
    );
  }
}

Widget _images(String image) {
  return Image.asset(
    image,
    fit: BoxFit.cover,
  );
}

final onBoardigImages = [
  _images('assets/images/carousel.png'),
  _images('assets/images/carousel.png'),
  _images('assets/images/carousel.png'),
];
