import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/core/middleware/middleware.dart';
import 'package:deliveryapp/features/auth_features/views/forget_password_view.dart';
import 'package:deliveryapp/features/auth_features/views/login_view.dart';
import 'package:deliveryapp/features/auth_features/views/new_password_view.dart';
import 'package:deliveryapp/features/auth_features/views/sign_up_view.dart';
import 'package:deliveryapp/features/auth_features/views/success.dart';
import 'package:deliveryapp/features/auth_features/views/verify_code_forget_password.dart';
import 'package:deliveryapp/features/auth_features/views/verify_code_sign_up.dart';
import 'package:deliveryapp/features/home_features/views/home_view.dart';
import 'package:deliveryapp/features/onboarding_feature/views/onboarding_view.dart';
import 'package:deliveryapp/features/splash_feature/views/splash_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SplashView(),middlewares:[Middleware()] ),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoardingView()),
  GetPage(name: AppRoutes.login, page: () => const LoginView()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUpView()),
  GetPage(
      name: AppRoutes.forgetPassword, page: () => const ForgetPasswordView()),
  GetPage(
      name: AppRoutes.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(
      name: AppRoutes.verifyCodeForgetPassword,
      page: () => const VerifyCodeForgetPassword()),
  GetPage(name: AppRoutes.resetPassword, page: () => const NewPassword()),
  GetPage(name: AppRoutes.success, page: () => const SuccessView()),
  GetPage(name: AppRoutes.homeView, page: () => const HomeView()),
];
