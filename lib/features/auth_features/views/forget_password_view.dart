import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_text_form_field.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/view_title.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(AppSize.s20),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
           ViewTitle(viewTitle: AppStrings.findAccount),
          const SizedBox(
            height: AppSize.s50,
          ),
          CustomTextFormField(
              hintText: AppStrings.emailHintText,
              labelText: AppStrings.emailLabelText,
              icon: Icons.email),
          const SizedBox(
            height: AppSize.s50,
          ),
          CustomMaterialButton(
            buttonLabel: AppStrings.next,
            onPressed: () {
              Get.toNamed(AppRoutes.verifyCodeForgetPassword);
            },
          ),
        ],
      ),
    ));
  }
}
