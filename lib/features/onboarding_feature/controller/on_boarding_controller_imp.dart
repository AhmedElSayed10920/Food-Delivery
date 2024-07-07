import 'package:deliveryapp/core/app_assets/constants.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/onboarding_controller.dart';
import 'package:deliveryapp/features/onboarding_feature/data/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingControllerImp extends OnboardingController {
  int currentIndex = 0;
  late PageController pageController;
  @override
  next() {
    currentIndex++;
    if (currentIndex == onBoardingData.length) {
      return Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentIndex,
          duration: AppConstants.ms500, curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

 
}
