import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
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
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(AppSize.s20),
          child: Column(
            children: [
              SizedBox(
                height: AppSize.s10,
              ),
              CustomSkipButton(),
              SizedBox(
                height: AppSize.s30,
              ),
              Expanded(
                child: PageViewBody(),
              ),
              PageIndicator(),
              SizedBox(
                height: AppSize.s30,
              ),
              CustomMaterialButton(),
              SizedBox(
                height: AppSize.s80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
