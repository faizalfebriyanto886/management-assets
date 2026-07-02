import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:management_asset/presentations/page/navbar/controller/navbar_controller.dart';

class NavbarBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavbarController());
  }
}

class NavbarView extends GetView<NavbarController> {
  static const String routeName = '/navbar';
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.page.elementAt(controller.selectedNavbar.value),
        bottomNavigationBar: SafeArea(
          bottom: true,
          child: Container(
            height: 75,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.changeSelectedNavBar(0);
                    },
                    child: Image.asset("assets/icons/home.png", width: 28, height: 28, color: Colors.white,)
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelectedNavBar(1);
                    },
                    child: Image.asset("assets/icons/calendar.png", width: 28, height: 28, color: Colors.white)
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelectedNavBar(2);
                    },
                    child: Image.asset("assets/icons/calendar.png", width: 28, height: 28, color: Colors.white)
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeSelectedNavBar(3);
                    },
                    child: Image.asset("assets/icons/calendar.png", width: 28, height: 28, color: Colors.white)
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}