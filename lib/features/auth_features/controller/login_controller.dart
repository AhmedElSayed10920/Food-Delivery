import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formState =  GlobalKey<FormState>();


  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  login() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print("Valid");
    }else{
      print("Not-Valid");
    }
  }
}
