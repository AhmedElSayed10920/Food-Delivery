import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
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
        height: AppSize.s55,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
        color: AppColors.primaryColor,
        child: Text(
          controller.currentIndex == onBoardingData.length - 1
              ? AppStrings.onBoardingContinueText
              : AppStrings.onBoardingNextText,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      );
    });
  }
}
