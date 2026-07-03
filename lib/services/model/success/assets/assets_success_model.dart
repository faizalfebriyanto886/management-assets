// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assets_success_model.freezed.dart';
part 'assets_success_model.g.dart';

@freezed
abstract class AssetsSuccessModel with _$AssetsSuccessModel {
    const factory AssetsSuccessModel({
        @JsonKey(name: "category")
        String? category,
        @JsonKey(name: "create_at")
        DateTime? createAt,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "update_at")
        DateTime? updateAt,
    }) = _AssetsSuccessModel;

    factory AssetsSuccessModel.fromJson(Map<String, dynamic> json) => _$AssetsSuccessModelFromJson(json);
}
