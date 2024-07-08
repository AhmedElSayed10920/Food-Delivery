import 'package:deliveryapp/core/app_assets/app_theme.dart';
import 'package:deliveryapp/core/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocale extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();
  ThemeData appTheme = getArabicThemeData();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.prefs.setString("lang", langCode);
    appTheme = langCode == "ar" ? getArabicThemeData() : getEnglishThemeData();
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? prefsLang = appServices.prefs.getString("lang");
    if (prefsLang == "ar") {
      language = const Locale("ar");
      appTheme = getArabicThemeData();
    } else if (prefsLang == "en") {
      language = const Locale("en");
      appTheme = getEnglishThemeData();
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = Get.deviceLocale!.languageCode == "ar"
          ? appTheme = getArabicThemeData()
          : appTheme = getEnglishThemeData();
    }
    super.onInit();
  }
}
