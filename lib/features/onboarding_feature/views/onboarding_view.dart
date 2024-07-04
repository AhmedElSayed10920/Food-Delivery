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
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomSkipButton(),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: PageViewBody(),
              ),
              PageIndicator(),
              SizedBox(
                height: 30,
              ),
              CustomMaterialButton(),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
