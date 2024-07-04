import 'package:deliveryapp/core/app_assets/app_theme.dart';
import 'package:deliveryapp/core/app_routes/routes.dart';
import 'package:deliveryapp/features/splash_feature/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: getThemeData(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      routes: routes,
    );
  }
}
