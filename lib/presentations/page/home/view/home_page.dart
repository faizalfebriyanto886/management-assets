// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:management_asset/presentations/page/home/controller/home_controller.dart';
import 'package:management_asset/presentations/reusable_widget/custom_text_field.dart';
import 'package:management_asset/presentations/theme/colors_style_theme.dart';
import 'package:management_asset/presentations/theme/text_style_theme.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140), 
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 70, 15, 15),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [
                0.0, 
                1.0
              ],
              colors: [
                primary, 
                primaryLight
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primaryDark),
                      image: DecorationImage(
                        image: AssetImage("assets/images/student.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Selamat Datang", style: AppFontStyle.bodyMedium(context, color: Colors.white)),
                      Text("John Doe", style: AppFontStyle.bodyLarge(context, color: Colors.white, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: CustomTextFieldBase(
                  customRadius: 40,
                  color: Colors.white, 
                  hintText: "Cari asset...",
                  prefix: Icon(Icons.search, color: primaryDark),
                ),
              )
            ],
          ),
        )
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemCount: 1,
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(),
          );
        }, 
      ),
    );
  }
}