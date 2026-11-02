import 'package:flutter/material.dart';

import '../models/onboarding_item_model.dart';

class OnboardingController extends ChangeNotifier {
  int currentPage = 0;
  bool isLastPage = false;

  void onPageChanged(int index) {
    currentPage = index;
    if (currentPage == OnboardingItemModel.onboardingList.length - 1) {
      isLastPage = true;
    } else {
      isLastPage = false;
    }
    notifyListeners();
  }

  late final PageController pageController;

  void goToNextPage() {
    pageController.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  OnboardingController() {
    pageController = PageController();
  }
}
