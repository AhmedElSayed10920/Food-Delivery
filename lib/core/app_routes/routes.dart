import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/auth_features/views/forget_password_view.dart';
import 'package:deliveryapp/features/auth_features/views/login_view.dart';
import 'package:deliveryapp/features/auth_features/views/sign_up_view.dart';
import 'package:deliveryapp/features/onboarding_feature/views/onboarding_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoardingView()),
  GetPage(name: AppRoutes.login, page: () => const LoginView()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpView()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPasswordView()),
];
