import 'package:deliveryapp/core/app_assets/app_strings.dart';
import 'package:deliveryapp/core/app_assets/font_styles.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
      fontFamily: AppStrings.fontFamily,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight);
}

TextStyle getTextStyleLight(double fontSize, Color color) {
  return _getTextStyle(fontSize, color, AppFontWeight.light);
}

TextStyle getTextStyleRegular(double fontSize, Color color) {
  return _getTextStyle(fontSize, color, AppFontWeight.regular);
}

TextStyle getTextStyleMedium(double fontSize, Color color) {
  return _getTextStyle(fontSize, color, AppFontWeight.medium);
}

TextStyle getTextStyleSemiBold(double fontSize, Color color) {
  return _getTextStyle(fontSize, color, AppFontWeight.semiBold);
}

TextStyle getTextStyleBold(double fontSize, Color color) {
  return _getTextStyle(fontSize, color, AppFontWeight.bold);
}
