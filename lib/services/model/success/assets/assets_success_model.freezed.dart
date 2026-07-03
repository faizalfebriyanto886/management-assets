// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assets_success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssetsSuccessModel {

@JsonKey(name: "category") String? get category;@JsonKey(name: "create_at") DateTime? get createAt;@JsonKey(name: "name") String? get name;@JsonKey(name: "status") String? get status;@JsonKey(name: "update_at") DateTime? get updateAt;
/// Create a copy of AssetsSuccessModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetsSuccessModelCopyWith<AssetsSuccessModel> get copyWith => _$AssetsSuccessModelCopyWithImpl<AssetsSuccessModel>(this as AssetsSuccessModel, _$identity);

  /// Serializes this AssetsSuccessModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssetsSuccessModel&&(identical(other.category, category) || other.category == category)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,createAt,name,status,updateAt);

@override
String toString() {
  return 'AssetsSuccessModel(category: $category, createAt: $createAt, name: $name, status: $status, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class $AssetsSuccessModelCopyWith<$Res>  {
  factory $AssetsSuccessModelCopyWith(AssetsSuccessModel value, $Res Function(AssetsSuccessModel) _then) = _$AssetsSuccessModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "category") String? category,@JsonKey(name: "create_at") DateTime? createAt,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "update_at") DateTime? updateAt
});




}
/// @nodoc
class _$AssetsSuccessModelCopyWithImpl<$Res>
    implements $AssetsSuccessModelCopyWith<$Res> {
  _$AssetsSuccessModelCopyWithImpl(this._self, this._then);

  final AssetsSuccessModel _self;
  final $Res Function(AssetsSuccessModel) _then;

/// Create a copy of AssetsSuccessModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? createAt = freezed,Object? name = freezed,Object? status = freezed,Object? updateAt = freezed,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AssetsSuccessModel].
extension AssetsSuccessModelPatterns on AssetsSuccessModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssetsSuccessModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssetsSuccessModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssetsSuccessModel value)  $default,){
final _that = this;
switch (_that) {
case _AssetsSuccessModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssetsSuccessModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssetsSuccessModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "category")  String? category, @JsonKey(name: "create_at")  DateTime? createAt, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "update_at")  DateTime? updateAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssetsSuccessModel() when $default != null:
return $default(_that.category,_that.createAt,_that.name,_that.status,_that.updateAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "category")  String? category, @JsonKey(name: "create_at")  DateTime? createAt, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "update_at")  DateTime? updateAt)  $default,) {final _that = this;
switch (_that) {
case _AssetsSuccessModel():
return $default(_that.category,_that.createAt,_that.name,_that.status,_that.updateAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "category")  String? category, @JsonKey(name: "create_at")  DateTime? createAt, @JsonKey(name: "name")  String? name, @JsonKey(name: "status")  String? status, @JsonKey(name: "update_at")  DateTime? updateAt)?  $default,) {final _that = this;
switch (_that) {
case _AssetsSuccessModel() when $default != null:
return $default(_that.category,_that.createAt,_that.name,_that.status,_that.updateAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssetsSuccessModel implements AssetsSuccessModel {
  const _AssetsSuccessModel({@JsonKey(name: "category") this.category, @JsonKey(name: "create_at") this.createAt, @JsonKey(name: "name") this.name, @JsonKey(name: "status") this.status, @JsonKey(name: "update_at") this.updateAt});
  factory _AssetsSuccessModel.fromJson(Map<String, dynamic> json) => _$AssetsSuccessModelFromJson(json);

@override@JsonKey(name: "category") final  String? category;
@override@JsonKey(name: "create_at") final  DateTime? createAt;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "status") final  String? status;
@override@JsonKey(name: "update_at") final  DateTime? updateAt;

/// Create a copy of AssetsSuccessModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsSuccessModelCopyWith<_AssetsSuccessModel> get copyWith => __$AssetsSuccessModelCopyWithImpl<_AssetsSuccessModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetsSuccessModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssetsSuccessModel&&(identical(other.category, category) || other.category == category)&&(identical(other.createAt, createAt) || other.createAt == createAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.updateAt, updateAt) || other.updateAt == updateAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,createAt,name,status,updateAt);

@override
String toString() {
  return 'AssetsSuccessModel(category: $category, createAt: $createAt, name: $name, status: $status, updateAt: $updateAt)';
}


}

/// @nodoc
abstract mixin class _$AssetsSuccessModelCopyWith<$Res> implements $AssetsSuccessModelCopyWith<$Res> {
  factory _$AssetsSuccessModelCopyWith(_AssetsSuccessModel value, $Res Function(_AssetsSuccessModel) _then) = __$AssetsSuccessModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "category") String? category,@JsonKey(name: "create_at") DateTime? createAt,@JsonKey(name: "name") String? name,@JsonKey(name: "status") String? status,@JsonKey(name: "update_at") DateTime? updateAt
});




}
/// @nodoc
class __$AssetsSuccessModelCopyWithImpl<$Res>
    implements _$AssetsSuccessModelCopyWith<$Res> {
  __$AssetsSuccessModelCopyWithImpl(this._self, this._then);

  final _AssetsSuccessModel _self;
  final $Res Function(_AssetsSuccessModel) _then;

/// Create a copy of AssetsSuccessModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? createAt = freezed,Object? name = freezed,Object? status = freezed,Object? updateAt = freezed,}) {
  return _then(_AssetsSuccessModel(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,createAt: freezed == createAt ? _self.createAt : createAt // ignore: cast_nullable_to_non_nullable
as DateTime?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,updateAt: freezed == updateAt ? _self.updateAt : updateAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
