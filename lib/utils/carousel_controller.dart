import 'package:flutter/material.dart';

class CarouselController extends ChangeNotifier {
  void toNextPage() {
    notifyListeners();
  }
}
