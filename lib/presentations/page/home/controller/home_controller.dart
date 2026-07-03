import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management_asset/presentations/reusable_widget/custom_snackbar_widget.dart';
import 'package:management_asset/presentations/theme/colors_style_theme.dart';
import 'package:management_asset/services/model/success/assets/assets_success_model.dart';
import 'package:management_asset/services/respository/assets_repositories.dart';

class HomeController extends GetxController  {
  @override
  void onInit() {
    getAssets();
    super.onInit();
  }

  List<AssetsSuccessModel> allAssets = [];

  final RxList<AssetsSuccessModel> listAssets = <AssetsSuccessModel>[].obs;

  RxBool isLoadingUpdate = false.obs;
  RxString selectedStatus = "Semua".obs;

  final searchController = TextEditingController();

  colorStatus({required String status}) {
    if (status == "Tersedia") {
      return greenPrimary;
    } else if (status == "Maintenance") {
      return redPrimary;
    } else {
      return primaryExtraLight;
    }
  }

  colorStatusText({required String status}) {
    if (status == "Tersedia") {
      return greenDark;
    } else if (status == "Maintenance") {
      return Colors.white;
    } else {
      return primaryDark;
    }
  }

  // void filterStatus(String status) {
  //   selectedStatus.value = status;

  //   if (status == "Semua") {
  //     listAssets.assignAll(allAssets);
  //     return;
  //   }

  //   listAssets.assignAll(
  //     allAssets.where((e) => e.status == status).toList(),
  //   );
  // }

  void filterStatus(String status) {
    selectedStatus.value = status;
    applyFilter();
  }

  void searchAsset(String value) {
    applyFilter();
  }

  void applyFilter() {
    List<AssetsSuccessModel> filtered = List.from(allAssets);

    if (selectedStatus.value != "Semua") {
      filtered = filtered.where((e) => e.status == selectedStatus.value).toList();
    }

    // Search Nama Barang
    final keyword = searchController.text.trim().toLowerCase();

    if (keyword.isNotEmpty) {
      filtered = filtered.where((e) {
        return (e.name ?? "").toLowerCase().contains(keyword);
      }).toList();
    }

    listAssets.assignAll(filtered);
  }

  final AssetRepository assetRepository = AssetRepository();

  Future<void> getAssets() async {
    final result = await assetRepository.getAssets();

    result.fold(
      (failure) {
        CustomSnackbar().showSnackbarError(
          title: "Oops!",
          desc: failure,
        );
      },
      (success) {
        // allAssets = List<AssetsSuccessModel>.from(success);

        listAssets.assignAll(success);

        allAssets = List.from(success);
        applyFilter();

        update();
      },
    );
  }

  Future<void> updateAsset({required String id, required String status}) async {
    isLoadingUpdate.value = true;
    final result = await assetRepository.updateAssetStatus(id: id, status: status);

    result.fold(
      (failure) {
        isLoadingUpdate.value = false;
        CustomSnackbar().showSnackbarError(
          title: "Oops!",
          desc: failure,
        );
      },
      (success) async {
        isLoadingUpdate.value = false;
        Get.back();
        CustomSnackbar().showSnackbarSuccess(
          title: "Success",
          desc: "Data berhasil diperbarui.",
          snackPosition: SnackPosition.TOP
        );

        await getAssets();
      },
    );
  }
}