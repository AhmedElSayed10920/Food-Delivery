import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                size: AppSize.s200,
                color: AppColors.primaryColor,
              ),
              Text(
                AppStrings.success,
                style: getTextStyleBold(AppSize.s24, AppColors.primaryColor),
              ),
              const SizedBox(
                height: AppSize.s50,
              ),
              CustomMaterialButton(
                buttonLabel: AppStrings.next,
                onPressed: () {
                  Get.offAllNamed(AppRoutes.homeView);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
