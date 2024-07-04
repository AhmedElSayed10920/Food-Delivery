import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/login_view.dart';
import 'package:deliveryapp/features/onboarding_feature/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoarding: (context) => const OnBoardingView(),
  AppRoutes.login: (context) => const LoginView(),
};
