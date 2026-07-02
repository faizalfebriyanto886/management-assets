import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController { 
  RxInt selectedNavbar = 0.obs;

  List page = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
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