import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.labelText,
    required this.icon,
  });
  final String hintText;
  final String labelText;
  final bool obscureText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      style: TextStyle(
        
      ),

      decoration: InputDecoration(
        
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSize.s20,
          vertical: AppSize.s16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: AppSize.s2,
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        labelText: labelText,
        hintStyle: const TextStyle(fontSize: AppSize.s16),
        prefixIcon: Icon(icon, color: AppColors.primaryColor),
        focusColor: AppColors.primaryColor,
        alignLabelWithHint: true,
        
      ),
      obscureText: obscureText,
    );
  }
}
