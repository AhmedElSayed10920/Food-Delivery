import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(builder: (controller) {
      return MaterialButton(
        onPressed: () {
          controller.next();
        },
        minWidth: double.infinity,
        height: 55,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColors.primaryColor,
        child: Text(
          controller.currentIndex == onBoardingData.length - 1
              ? AppStrings.onBoardingContinueText
              : "Next",
          style: getTextStyleSemiBold(20, AppColors.white),
        ),
      );
    });
  }
}
