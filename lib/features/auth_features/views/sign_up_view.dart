import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_text_form_field.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/having_or_not_having_an_account.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s20),
        child: ListView(
          children: [
            const SizedBox(
              height: AppSize.s20,
            ),
            Center(
              child: Text(
                AppStrings.signUp,
                style: getTextStyleBold(24, Colors.black),
              ),
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
            CustomTextFormField(
                hintText: AppStrings.userNameHint,
                labelText: AppStrings.userNameLabel,
                icon: Icons.person),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomTextFormField(
                hintText: AppStrings.emailHintText,
                labelText: AppStrings.emailLabelText,
                icon: Icons.email),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomTextFormField(
                hintText: AppStrings.phoneHint,
                labelText: AppStrings.phoneLabel,
                icon: Icons.phone),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomTextFormField(
                hintText: AppStrings.passHintText,
                labelText: AppStrings.passLabelText,
                icon: Icons.lock_outline),
            const SizedBox(
              height: AppSize.s20,
            ),
            CustomMaterialButton(
              buttonLabel: AppStrings.signUp,
              onPressed: () {},
            ),
            const SizedBox(
              height: AppSize.s12,
            ),
            HavingOrNotHaveAnAccount(
                askMessage: AppStrings.alreadyHaveAccount,
                inkWellLabel: AppStrings.login)
          ],
        ),
      ),
    );
  }
}
