import 'dart:async';

import 'package:get/get.dart';
import 'package:management_asset/presentations/page/home/view/home_page.dart';
import 'package:management_asset/presentations/page/navbar/view/navbar_view.dart';

class SplashController extends GetxController { 
  @override
  void onInit() {
    Timer(Duration(seconds: 2), () {
      Get.offNamed(HomePage.routeName);
    });
    super.onInit();
  }
}