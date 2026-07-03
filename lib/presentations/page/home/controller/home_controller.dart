import 'package:get/get.dart';

class HomeController extends GetxController { 
  List<Asset> listAssets = [
    Asset(id: 0, name: "Lenovo ThinkPad X1 Carbon", category: "Dekstop", image: "assets/images/received.png", status: AssetStatus.available),
    Asset(id: 1, name: "Dell XPS 13", category: "Dekstop", image: "assets/images/received.png", status: AssetStatus.maintenance),
    Asset(id: 2, name: "MacBook Pro", category: "Dekstop", image: "assets/images/received.png", status: AssetStatus.available),
    Asset(id: 3, name: "HP Spectre x360", category: "Dekstop", image: "assets/images/received.png", status: AssetStatus.available),
    Asset(id: 4, name: "Surface Laptop", category: "Dekstop", image: "assets/images/received.png", status: AssetStatus.available),
    Asset(id: 5, name: "Canon L110", category: "Elektronik", image: "assets/images/received.png", status: AssetStatus.available),
    Asset(id: 6, name: "Gamen titan 3", category: "Elektronik", image: "assets/images/received.png", status: AssetStatus.available),

  ];

  RxList<Asset> selectedAsset = <Asset>[].obs;

  setSelectedAsset(Asset asset, int index) {
    if (!selectedAsset.contains(asset)) {
      selectedAsset.add(asset);
    } else {
      selectedAsset.remove(asset);
    }
  }
}

class Asset {
  final int id;
  final String name;
  final String category;
  final String image;
  AssetStatus status;

  Asset({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.status,
  });
}

enum AssetStatus {
  available,
  borrowed,
  maintenance,
}