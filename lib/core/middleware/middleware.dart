import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/core/services/app_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Middleware extends GetMiddleware {
  @override
  int? get priority => 1;

  AppServices myService = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myService.prefs.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}
