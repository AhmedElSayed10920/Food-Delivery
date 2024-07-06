import 'package:deliveryapp/core/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocale extends GetxController {
  Locale? language;
  AppServices appServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);
    appServices.prefs.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? prefsLang = appServices.prefs.getString("lang");
    if (prefsLang == "ar") {
      language = const Locale("ar");
    } else if (prefsLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
