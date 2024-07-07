import 'package:deliveryapp/core/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  GlobalKey<FormState> formState =  GlobalKey<FormState>();

  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  signUp() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print("Valid");
      Get.toNamed(AppRoutes.verifyCodeSignUp);
    }else{
      print("Not-Valid");
    }
    
  }
}
