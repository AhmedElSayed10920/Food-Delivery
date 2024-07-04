import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/model/onboarding_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewBody extends GetView<OnboardingControllerImp> {
  const PageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                  height: 240,
                  width: 340,
                  child: Image.asset(
                    onBoardingData[index].onBoardingImage,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(
                height: 20,
              ),
              Text(
                onBoardingData[index].onBoardingTitle,
                style: getTextStyleBold(38, AppColors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                onBoardingData[index].onBoardingCaption,
                style: getTextStyleMedium(18, AppColors.black.withOpacity(.4)),
                textAlign: TextAlign.center,
              ),
            ],
          );
        });
  }
}
