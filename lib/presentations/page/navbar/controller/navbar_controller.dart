import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:management_asset/presentations/page/home/view/home_page.dart';

class NavbarController extends GetxController { 
  RxInt selectedNavbar = 0.obs;

  List page = [
    HomePage(),
    Center(
      child: Text(
        "Calender",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Other",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    )
  ];

  void changeSelectedNavBar(int index) {
    selectedNavbar.value = index;
  }
}