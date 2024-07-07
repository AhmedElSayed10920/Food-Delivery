import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOTP extends StatelessWidget {
  const CustomOTP({
    super.key,
    this.onSubmit,
  });
  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      focusedBorderColor: AppColors.primaryColor,
      cursorColor: AppColors.primaryColor,
      fieldWidth: 50,
      keyboardType: TextInputType.number,
      numberOfFields: 5,
      borderColor: AppColors.primaryColor,
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: onSubmit,
    );
  }
}
