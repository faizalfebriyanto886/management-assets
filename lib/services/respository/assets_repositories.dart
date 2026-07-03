import 'package:dartz/dartz.dart';
import 'package:management_asset/services/constant/firestore_client.dart';
import 'package:management_asset/services/model/success/assets/assets_success_model.dart';

class AssetRepository {
  final FirestoreClient client;

  AssetRepository(this.client);

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
}