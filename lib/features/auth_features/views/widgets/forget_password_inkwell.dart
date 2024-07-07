import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:flutter/material.dart';

class ForgetPasswordInkWell extends StatelessWidget {
  const ForgetPasswordInkWell({
    super.key,
    required this.inkLabel,
    this.onTap,
  });
  final String inkLabel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppSize.s10, horizontal: AppSize.s20),
      child: InkWell(
        onTap: onTap,
        child: Text(
          inkLabel,
          style: const TextStyle(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
