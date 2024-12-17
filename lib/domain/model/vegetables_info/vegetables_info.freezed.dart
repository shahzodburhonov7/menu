// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vegetables_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VegetablesInfo _$VegetablesInfoFromJson(Map<String, dynamic> json) {
  return _VegetablesInfo.fromJson(json);
}

/// @nodoc
mixin _$VegetablesInfo {
  int? get id => throw _privateConstructorUsedError;
  String? get name_uz => throw _privateConstructorUsedError;
  String? get name_ru => throw _privateConstructorUsedError;
  String? get name_en => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VegetablesInfoCopyWith<VegetablesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VegetablesInfoCopyWith<$Res> {
  factory $VegetablesInfoCopyWith(
          VegetablesInfo value, $Res Function(VegetablesInfo) then) =
      _$VegetablesInfoCopyWithImpl<$Res, VegetablesInfo>;
  @useResult
  $Res call(
      {int? id,
      String? name_uz,
      String? name_ru,
      String? name_en,
      String? image});
}

/// @nodoc
class _$VegetablesInfoCopyWithImpl<$Res, $Val extends VegetablesInfo>
    implements $VegetablesInfoCopyWith<$Res> {
  _$VegetablesInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VegetablesInfoImplCopyWith<$Res>
    implements $VegetablesInfoCopyWith<$Res> {
  factory _$$VegetablesInfoImplCopyWith(_$VegetablesInfoImpl value,
          $Res Function(_$VegetablesInfoImpl) then) =
      __$$VegetablesInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name_uz,
      String? name_ru,
      String? name_en,
      String? image});
}

/// @nodoc
class __$$VegetablesInfoImplCopyWithImpl<$Res>
    extends _$VegetablesInfoCopyWithImpl<$Res, _$VegetablesInfoImpl>
    implements _$$VegetablesInfoImplCopyWith<$Res> {
  __$$VegetablesInfoImplCopyWithImpl(
      _$VegetablesInfoImpl _value, $Res Function(_$VegetablesInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? image = freezed,
  }) {
    return _then(_$VegetablesInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VegetablesInfoImpl implements _VegetablesInfo {
  const _$VegetablesInfoImpl(
      {this.id, this.name_uz, this.name_ru, this.name_en, this.image});

  factory _$VegetablesInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VegetablesInfoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name_uz;
  @override
  final String? name_ru;
  @override
  final String? name_en;
  @override
  final String? image;

  @override
  String toString() {
    return 'VegetablesInfo(id: $id, name_uz: $name_uz, name_ru: $name_ru, name_en: $name_en, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VegetablesInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_uz, name_uz) || other.name_uz == name_uz) &&
            (identical(other.name_ru, name_ru) || other.name_ru == name_ru) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name_uz, name_ru, name_en, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VegetablesInfoImplCopyWith<_$VegetablesInfoImpl> get copyWith =>
      __$$VegetablesInfoImplCopyWithImpl<_$VegetablesInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VegetablesInfoImplToJson(
      this,
    );
  }
}

abstract class _VegetablesInfo implements VegetablesInfo {
  const factory _VegetablesInfo(
      {final int? id,
      final String? name_uz,
      final String? name_ru,
      final String? name_en,
      final String? image}) = _$VegetablesInfoImpl;

  factory _VegetablesInfo.fromJson(Map<String, dynamic> json) =
      _$VegetablesInfoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name_uz;
  @override
  String? get name_ru;
  @override
  String? get name_en;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$VegetablesInfoImplCopyWith<_$VegetablesInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
