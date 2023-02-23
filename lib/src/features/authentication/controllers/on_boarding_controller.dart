import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingController extends ChangeNotifier {
  int _currentPage = 0;
  LiquidController liquidController = LiquidController();

  int get currentPage => _currentPage;
  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  void nextPage() {
    liquidController.animateToPage(page: currentPage + 1);
  }
}
