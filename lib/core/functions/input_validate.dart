import 'package:get/get.dart';

inputValidate(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "This field is required";
  }
  if (type == "userName") {
    if (!GetUtils.isUsername(val)) {
      return "Not vaild username";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not vaild Email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "Not vaild Phone Number";
    }
  }
  if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be greater than $max";
  }
}
