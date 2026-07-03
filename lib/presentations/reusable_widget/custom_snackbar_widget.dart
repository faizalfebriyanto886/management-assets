// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  customSnackbarWithTitle(BuildContext context, String title) {
    final snackBar = SnackBar(
      backgroundColor: const Color(0XFF303030),
      behavior: SnackBarBehavior.floating,
      width: title.length * 8,
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      duration: const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      content: Text(title, textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.white),),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  showSnackbarSuccess({
    required title,
    required desc,
    required SnackPosition? snackPosition,
  }){
    return Get.snackbar(
      title,
      desc,
      duration: const Duration(milliseconds: 3000),
      backgroundColor: Colors.green,
      colorText: Colors.white,
      padding:const EdgeInsets.all(15),
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
      margin:const EdgeInsets.all(25),
      borderRadius: 15,
      forwardAnimationCurve: Curves.easeInOut,
      reverseAnimationCurve: Curves.easeOutBack,
    );
  }

  showSnackbarError({
    required title,
    required desc,
  }){
    return Get.snackbar(
      title,
      desc,
      duration: const Duration(milliseconds: 3000),
      backgroundColor: Color(0XFFEB4D2C),
      colorText: Colors.white,
      padding:const EdgeInsets.all(15),
      snackPosition: SnackPosition.TOP,
      borderRadius: 15,
      margin:const EdgeInsets.all(25),
      forwardAnimationCurve: Curves.easeInOut,
      reverseAnimationCurve: Curves.easeOutBack,
    );
  }
}