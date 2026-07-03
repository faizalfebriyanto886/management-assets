// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:management_asset/presentations/page/detail_asset/view/detail_asset_view.dart';
import 'package:management_asset/presentations/page/home/controller/home_controller.dart';
import 'package:management_asset/presentations/reusable_widget/custom_elevated_button.dart';
import 'package:management_asset/presentations/reusable_widget/custom_text_field.dart';
import 'package:management_asset/presentations/theme/colors_style_theme.dart';
import 'package:management_asset/presentations/theme/text_style_theme.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}

class HomePage extends GetView<HomeController> {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/student.png"),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: AppFontStyle.bodyMedium(
                    context,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "John Doe",
                  style: AppFontStyle.bodyLarge(
                    context,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: Get.width * 0.78,
                  child: CustomTextFieldBase(
                    customRadius: 40,
                    color: Colors.white,
                    hintText: "Cari asset...",
                    prefix: Icon(
                      Icons.search,
                      color: primaryDark,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle filter button tap
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                        Iconsax.filter_add,
                        color: primaryDark,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => controller.selectedAsset.isEmpty 
        ? SizedBox()
        : Container(
          height: 80,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, -3),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButtonOutline(
                height: 45,
                width: Get.width * 0.38, 
                title: "Kembalikan",
                fontColor: redPrimary,
                outlineColor: redPrimary
              ),
              CustomElevatedButton(
                height: 45, 
                width: Get.width * 0.5, 
                fillColor: primary,
                title: "Pinjam"
              )
            ],
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemCount: controller.listAssets.length,
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              controller.setSelectedAsset(controller.listAssets[index], index);
              log(controller.selectedAsset.toString());
              // Get.toNamed(DetailAssetView.routeName);
            },
            child: Obx(
              () => Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: controller.selectedAsset.contains(controller.listAssets[index]) ? primary : Colors.transparent,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          // padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage("assets/images/received.png"),
                              fit: BoxFit.cover,
                            ), 
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            spacing: 10,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.listAssets[index].name,
                                style: AppFontStyle.bodyMedium(
                                  context,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Kategori : ${controller.listAssets[index].category}",
                                style: AppFontStyle.bodySmall(
                                  context,
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                          decoration: BoxDecoration(
                            color: primaryExtraLight,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              controller.listAssets[index].status == AssetStatus.available
                                ? "Tersedia"
                                : controller.listAssets[index].status == AssetStatus.borrowed
                                  ? "Dipinjam"
                                  : "Dalam Perbaikan",
                              style: AppFontStyle.bodySmall(
                                context,
                                color: primaryDark,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }, 
      ),
    );
  }
}