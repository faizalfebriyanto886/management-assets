import 'package:dartz/dartz.dart';
import 'package:management_asset/services/constant/firestore_client.dart';
import 'package:management_asset/services/model/success/assets/assets_success_model.dart';

class AssetRepository {
  final FirestoreClient client = FirestoreClient();

  Future<Either<String, List<AssetsSuccessModel>>> getAssets() {
    return client.getCollection(
      collection: "assets",
      onSuccess: (snapshot) {
        return snapshot.docs.map((doc) {
          return AssetsSuccessModel.fromJson({
            "id": doc.id,
            ...doc.data(),
          });
        }).toList();
      },
      onFailure: (e) {
        return e.message ?? "Unknown Error";
      },
    );
  }

  Future<Either<String, bool>> updateAssetStatus({
    required String id,
    required String status,
  }) {
    return client.updateDocument(
      collection: "assets",
      documentId: id,
      data: {
        "status": status,
        "update_at": DateTime.now(),
      },
      onSuccess: () => true,
      onFailure: (e) => e.message ?? "Unknown Error",
    );
  }
}