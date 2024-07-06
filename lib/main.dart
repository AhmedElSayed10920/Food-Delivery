import 'package:deliveryapp/core/app_assets/app_theme.dart';
import 'package:deliveryapp/core/app_routes/routes.dart';
import 'package:deliveryapp/core/localization/change_local_controller.dart';
import 'package:deliveryapp/core/localization/translation.dart';
import 'package:deliveryapp/core/services/app_services.dart';
import 'package:deliveryapp/features/splash_feature/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocale controller = Get.put(ChangeLocale());
    return GetMaterialApp(
      theme: getThemeData(),
      translations: AppTranslation(),
      locale:controller.language ,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      routes: routes,
    );
  }
}
