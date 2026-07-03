import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class AssetsSuccessModel {
    final String? id;
    final String? category;
    final Timestamp? createAt;
    final String? name;
    final String? status;
    final Timestamp? updateAt;

    AssetsSuccessModel({
        this.id,
        this.category,
        this.createAt,
        this.name,
        this.status,
        this.updateAt,
    });

    factory AssetsSuccessModel.fromRawJson(String str) => AssetsSuccessModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory AssetsSuccessModel.fromJson(Map<String, dynamic> json) => AssetsSuccessModel(
        id: json['id'],
        category: json["category"],
        createAt: json["create_at"],
        name: json["name"],
        status: json["status"],
        updateAt: json["update_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "create_at": createAt,
        "name": name,
        "status": status,
        "update_at": updateAt,
    };
}
