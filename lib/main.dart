import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_routes/routes.dart';
import 'package:deliveryapp/features/onboarding_feature/views/onboarding_view.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
      routes: routes ,
    );
  }
}
