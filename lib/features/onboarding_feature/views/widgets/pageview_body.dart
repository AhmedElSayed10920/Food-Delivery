import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/features/onboarding_feature/controller/on_boarding_controller_imp.dart';
import 'package:deliveryapp/features/onboarding_feature/data/onboarding_view_model.dart';
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
                  height: AppSize.s240,
                  width: AppSize.s340,
                  child: Image.asset(
                    onBoardingData[index].onBoardingImage,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(
                height: AppSize.s20,
              ),
              Text(
                onBoardingData[index].onBoardingTitle,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              Text(onBoardingData[index].onBoardingCaption,
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center),
            ],
          );
        });
  }
}
