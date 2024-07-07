import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/data/onboarding_view_model.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_skip_button.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/page_indicator.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/pageview_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s20),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s10,
              ),
              const CustomSkipButton(),
              const SizedBox(
                height: AppSize.s30,
              ),
              const Expanded(
                child: PageViewBody(),
              ),
              const PageIndicator(),
              const SizedBox(
                height: AppSize.s30,
              ),
              GetBuilder<OnboardingControllerImp>(builder: (controller) {
                return CustomMaterialButton(
                  onPressed: () {
                    controller.next();
                  },
                  buttonLabel:
                      controller.currentIndex == onBoardingData.length - 1
                          ? AppStrings.onBoardingContinueText
                          : AppStrings.onBoardingNextText,
                );
              }),
              const SizedBox(
                height: AppSize.s80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
