import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/data/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSkipButton extends StatelessWidget {
  const CustomSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GetBuilder<OnboardingControllerImp>(builder: (controller) {
          return GestureDetector(
            onTap: () {
              Get.offAllNamed(AppRoutes.login);
            },
            child: Text(
              controller.currentIndex == onBoardingData.length - 1
                  ? AppStrings.emptyString
                  : AppStrings.onBoardingSkipText,
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.left,
            ),
          );
        })
      ],
    );
  }
}
