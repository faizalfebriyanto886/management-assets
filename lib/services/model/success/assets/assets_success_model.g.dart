// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets_success_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssetsSuccessModel _$AssetsSuccessModelFromJson(Map<String, dynamic> json) =>
    _AssetsSuccessModel(
      category: json['category'] as String?,
      createAt: json['create_at'] == null
          ? null
          : DateTime.parse(json['create_at'] as String),
      name: json['name'] as String?,
      status: json['status'] as String?,
      updateAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
    );

Map<String, dynamic> _$AssetsSuccessModelToJson(_AssetsSuccessModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'create_at': instance.createAt?.toIso8601String(),
      'name': instance.name,
      'status': instance.status,
      'update_at': instance.updateAt?.toIso8601String(),
    };
