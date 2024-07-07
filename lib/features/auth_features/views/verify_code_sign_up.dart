import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_otp.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/view_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
          ViewTitle(viewTitle: AppStrings.verifyCode),
          const SizedBox(
            height: AppSize.s50,
          ),
          CustomOTP(
            onSubmit: (String verificationCode) {
              Get.toNamed(AppRoutes.success);
            },
          ),
        ],
      ),
    );
  }
}
