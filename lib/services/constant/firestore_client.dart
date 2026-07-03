
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class FirestoreClient {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<Either<L, R>> getCollection<L, R>({
    required String collection,
    required R Function(QuerySnapshot<Map<String, dynamic>>) onSuccess,
    required L Function(FirebaseException) onFailure,
  }) async {
    try {
      final snapshot = await firestore.collection(collection).get();

      return right(onSuccess(snapshot));
    } on FirebaseException catch (e) {
      return left(onFailure(e));
    }
  }

  Future<Either<L, R>> updateDocument<L, R>({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
    required R Function() onSuccess,
    required L Function(FirebaseException) onFailure,
  }) async {
    try {
      await firestore.collection(collection).doc(documentId).update(data);

      return right(onSuccess());
    } on FirebaseException catch (e) {
      return left(onFailure(e));
    }
  }
}