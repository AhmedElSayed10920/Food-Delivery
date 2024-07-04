import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:deliveryapp/features/splash_feature/controller/splash_view_controller.dart';
import 'package:get/get.dart';

class SplashViewControllerImp extends SplashViewController {
  @override
  navigateToOnBoarding() async {
    await Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(AppRoutes.onBoarding);
    });
  }

  @override
  void onReady() {
    navigateToOnBoarding();
    super.onReady();
  }
}
