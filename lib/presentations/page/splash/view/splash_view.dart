import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management_asset/presentations/page/splash/controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset("assets/images/logo.png", width: 200, height: 200),
          ),
        );
      }
    );
  }
}