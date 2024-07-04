import 'package:deliveryapp/core/app_assets/app_images.dart';
import 'package:deliveryapp/features/splash_feature/controller/splash_view_controller_imp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashViewControllerImp(),
        builder: (context) {
          return Scaffold(
            body: Center(
                child: Image.asset(
              AppAssetImages.logo,
              width: 200,
              height: 200,
            )),
          );
        });
  }
}
