import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/font_styles.dart';
import 'package:deliveryapp/core/app_assets/styles.dart';
import 'package:flutter/material.dart';

ThemeData getEnglishThemeData() {
  return ThemeData(
      fontFamily: AppfontFamily.fontFamilyEn,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primaryColor,
      textTheme: TextTheme(
        displayLarge: getTextStyleBold(
          FontSize.s35,
          AppColors.black,
        ),
        displayMedium: getTextStyleMedium(
          FontSize.s18,
          AppColors.black.withOpacity(.4),
        ),
        labelSmall: getTextStyleRegular(
          FontSize.s16,
          AppColors.black,
        ),
        labelLarge: getTextStyleSemiBold(
          FontSize.s20,
          AppColors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
      ));
}

ThemeData getArabicThemeData() {
  return ThemeData(
      fontFamily: AppfontFamily.fontFamilyAr,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primaryColor,
      textTheme: TextTheme(
        displayLarge: getTextStyleBold(
          FontSize.s35,
          AppColors.black,
        ),
        displayMedium: getTextStyleMedium(
          FontSize.s18,
          AppColors.black.withOpacity(.4),
        ),
        labelSmall: getTextStyleRegular(
          FontSize.s18,
          AppColors.black,
        ),
        labelLarge: getTextStyleSemiBold(
          FontSize.s20,
          AppColors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
      ));
}
