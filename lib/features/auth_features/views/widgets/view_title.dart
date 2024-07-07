import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget {
  const ViewTitle({
    super.key,
    required this.viewTitle,
  });
  final String viewTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        viewTitle,
        style: getTextStyleBold(AppSize.s24, AppColors.primaryColor),
      ),
    );
  }
}
