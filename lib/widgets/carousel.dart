import 'package:barizi_nashon_test/utils/carousel_controller.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  Carousel({required this.pages, this.controller, this.onPageChanged, super.key});
  final List<Widget> pages;
  double height = 300;
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
      children: [
        SizedBox(
          height: widget.height,
          child: PageView(
            controller: _pageController,
            children: widget.pages,
          ),
        ),
        _CarouselRectangle(
          rectangleNumber: widget.pages.length,
          currentRectangle: _pageController.positions.isEmpty 
          ? 0
          : _pageController.page!.round(),
          onRectangleTapped: _animateToPage,
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
   double rectangleSize = 20;
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
          child: Container(
            height: rectangleSize,
            width: rectangleSize,
            decoration: BoxDecoration(
                color: (i == currentRectangle)
                    ? const Color.fromRGBO(17, 173, 200, 0.984)
                    : const Color.fromRGBO(2, 64, 75, 0.98),
                shape: BoxShape.circle),
            child: GestureDetector(
              onTap: () => onRectangleTapped(i),
            ),
          ),
        );
      }).toList(),
    );
  }
}
