import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_text_form_field.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/view_title.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s20),
        child: Column(
          children: [
            const SizedBox(height: AppSize.s30,),
            ViewTitle(viewTitle:AppStrings.resetPassword),
            const SizedBox(height: AppSize.s30,),
            CustomTextFormField(
              hintText: AppStrings.enterNewPassword,
              obscureText: true,
              labelText: AppStrings.newPassword,
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: AppSize.s30,),
            CustomTextFormField(
              hintText: AppStrings.reEnterNewPassword,
              obscureText: true,
              labelText: AppStrings.reEnterNewPassword,
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: AppSize.s30,),
            CustomMaterialButton(
            buttonLabel: AppStrings.confirm,
            onPressed: () {
              Get.toNamed(AppRoutes.success);
            },
          ),
          ],
        ),
      ),
    );
  }
}
