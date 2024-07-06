import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppServices extends GetxService{

  late SharedPreferences prefs;
  Future<AppServices> init()async{
     prefs = await SharedPreferences.getInstance();
     return this;
  }
}

initialServices() async{
  await Get.putAsync(()=>AppServices().init());
}