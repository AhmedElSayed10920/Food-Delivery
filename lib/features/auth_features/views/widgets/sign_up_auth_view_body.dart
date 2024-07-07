import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/functions/input_validate.dart';
import 'package:deliveryapp/features/auth_features/controller/signup_controller.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/custom_text_form_field.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/having_or_not_having_an_account.dart';
import 'package:deliveryapp/features/auth_features/views/widgets/view_title.dart';
import 'package:deliveryapp/features/onboarding_feature/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpAuthBody extends StatelessWidget {
  const SignUpAuthBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Form(
      key: controller.formState,
      child: ListView(
        children: [
          const SizedBox(
            height: AppSize.s20,
          ),
          ViewTitle(
            viewTitle: AppStrings.signUp,
          ),
          const SizedBox(
            height: AppSize.s30,
          ),
          CustomTextFormField(
              validator: (val) {
               return inputValidate(val!, 4, 20, "userName");
              },
              controller: controller.username,
              hintText: AppStrings.userNameHint,
              labelText: AppStrings.userNameLabel,
              icon: Icons.person),
          const SizedBox(
            height: AppSize.s20,
          ),
          CustomTextFormField(
              validator: (val) {
               return inputValidate(val!, 12, 100, "email");
              },
              controller: controller.email,
              hintText: AppStrings.emailHintText,
              labelText: AppStrings.emailLabelText,
              icon: Icons.email),
          const SizedBox(
            height: AppSize.s20,
          ),
          CustomTextFormField(
              validator: (val) {
               return inputValidate(val!, 11, 11, "phone");
              },
              controller: controller.phone,
              hintText: AppStrings.phoneHint,
              labelText: AppStrings.phoneLabel,
              icon: Icons.phone),
          const SizedBox(
            height: AppSize.s20,
          ),
          CustomTextFormField(
              validator: (val) {
               return inputValidate(val!, 8, 30, "password");
              },
              controller: controller.password,
              hintText: AppStrings.passHintText,
              labelText: AppStrings.passLabelText,
              icon: Icons.lock_outline),
          const SizedBox(
            height: AppSize.s20,
          ),
          CustomMaterialButton(
            buttonLabel: AppStrings.signUp,
            onPressed: () {
              controller.signUp();
            },
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          HavingOrNotHaveAnAccount(
              askMessage: AppStrings.alreadyHaveAccount,
              inkWellLabel: AppStrings.login)
        ],
      ),
    );
  }
}
