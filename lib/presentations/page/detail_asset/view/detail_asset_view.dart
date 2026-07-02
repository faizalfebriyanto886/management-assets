// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:management_asset/presentations/page/detail_asset/controller/detail_asset_controller.dart';
import 'package:management_asset/presentations/reusable_widget/custom_elevated_button.dart';
import 'package:management_asset/presentations/theme/colors_style_theme.dart';
import 'package:management_asset/presentations/theme/text_style_theme.dart';

class DetailAssetBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailAssetController());
  }
}

class DetailAssetView extends StatelessWidget {
  static const String routeName = '/detail-asset';
  const DetailAssetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: blackLight,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: black, size: 22,),
            ),
            const SizedBox(width: 20),
            Text(
              "Detail Asset",
              style: AppFontStyle.bodyExtraLarge(
                context,
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          height: 70,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, -3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButton(
                height: 40,
                width: Get.width * 0.4, 
                fillColor: redPrimary,
                title: "Pengembalian"
              ),
              CustomElevatedButton(
                height: 40,
                width: Get.width * 0.45, 
                title: "Pinjamkan"
              ),
            ],
          )
        ),
      ),
      backgroundColor: blackLight,
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lenovo ThinkPad X1 Carbon",
                    style: AppFontStyle.bodyLarge(
                      context,
                      color: black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Kategori : Elektronik",
                    style: AppFontStyle.bodySmall(
                      context,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}