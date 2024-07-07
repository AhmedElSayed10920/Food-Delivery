import 'package:deliveryapp/core/app_assets/app_images.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_text_form_field.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/forget_password_inkwell.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/having_or_not_having_an_account.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAuthViewBody extends StatelessWidget {
  const LoginAuthViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: AppSize.s50,
        ),
        Image.asset(
          AppAssetImages.logo,
          width: AppSize.s125,
          height: AppSize.s200,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: AppSize.s40,
        ),
        CustomTextFormField(
          hintText: AppStrings.emailHintText,
          labelText: AppStrings.emailLabelText,
          icon: Icons.email,
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        CustomTextFormField(
          hintText: AppStrings.passHintText,
          obscureText: true,
          labelText: AppStrings.passLabelText,
          icon: Icons.lock_outline,
        ),
        ForgetPasswordInkWell(
          inkLabel: AppStrings.forgetPassword,
          onTap: () {
            Get.toNamed(AppRoutes.forgetPassword);
          },
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
        CustomMaterialButton(
          buttonLabel: AppStrings.login,
          onPressed: () {},
        ),
        const SizedBox(
          height: AppSize.s5,
        ),
        HavingOrNotHaveAnAccount(
          askMessage: AppStrings.dontHaveAcc,
          inkWellLabel: AppStrings.signUp,
          onTap: () {
            Get.toNamed(AppRoutes.signUp);
          },
        ),
      ],
    );
  }
}
