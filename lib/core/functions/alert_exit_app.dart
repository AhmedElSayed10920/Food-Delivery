import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

 exitAlert() {
  Get.defaultDialog(title: "Alert!", middleText: "Confirm to Exit", actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("Confirm")),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("Cancel")),
  ]);
  
}
