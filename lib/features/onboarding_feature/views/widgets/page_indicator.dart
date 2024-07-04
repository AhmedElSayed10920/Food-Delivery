import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(onBoardingData.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: 6,
                width: controller.currentIndex == index ? 20 : 6,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12)),
              ),
            );
          }),
        ],
      );
    });
  }
}
