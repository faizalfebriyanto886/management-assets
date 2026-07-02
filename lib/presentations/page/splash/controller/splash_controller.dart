import 'dart:async';

import 'package:get/get.dart';
import 'package:management_asset/presentations/page/navbar/view/navbar_view.dart';

class SplashController extends GetxController { 
  @override
  void onInit() {
    Timer(Duration(seconds: 2), () {
      Get.offNamed(NavbarView.routeName);
    });
    super.onInit();
  }
}