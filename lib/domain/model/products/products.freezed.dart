// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodProducts _$FoodProductsFromJson(Map<String, dynamic> json) {
  return _FoodProducts.fromJson(json);
}

/// @nodoc
mixin _$FoodProducts {
  int? get id => throw _privateConstructorUsedError;
  dynamic get name_uz => throw _privateConstructorUsedError;
  dynamic get name_ru => throw _privateConstructorUsedError;
  dynamic get name_en => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodProductsCopyWith<FoodProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodProductsCopyWith<$Res> {
  factory $FoodProductsCopyWith(
          FoodProducts value, $Res Function(FoodProducts) then) =
      _$FoodProductsCopyWithImpl<$Res, FoodProducts>;
  @useResult
  $Res call(
      {int? id,
      dynamic name_uz,
      dynamic name_ru,
      dynamic name_en,
      String? image,
      int? price});
}

/// @nodoc
class _$FoodProductsCopyWithImpl<$Res, $Val extends FoodProducts>
    implements $FoodProductsCopyWith<$Res> {
  _$FoodProductsCopyWithImpl(this._value, this._then);

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
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodProductsImplCopyWith<$Res>
    implements $FoodProductsCopyWith<$Res> {
  factory _$$FoodProductsImplCopyWith(
          _$FoodProductsImpl value, $Res Function(_$FoodProductsImpl) then) =
      __$$FoodProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic name_uz,
      dynamic name_ru,
      dynamic name_en,
      String? image,
      int? price});
}

/// @nodoc
class __$$FoodProductsImplCopyWithImpl<$Res>
    extends _$FoodProductsCopyWithImpl<$Res, _$FoodProductsImpl>
    implements _$$FoodProductsImplCopyWith<$Res> {
  __$$FoodProductsImplCopyWithImpl(
      _$FoodProductsImpl _value, $Res Function(_$FoodProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_$FoodProductsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodProductsImpl implements _FoodProducts {
  const _$FoodProductsImpl(
      {this.id,
      this.name_uz,
      this.name_ru,
      this.name_en,
      this.image,
      this.price});

  factory _$FoodProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodProductsImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic name_uz;
  @override
  final dynamic name_ru;
  @override
  final dynamic name_en;
  @override
  final String? image;
  @override
  final int? price;

  @override
  String toString() {
    return 'FoodProducts(id: $id, name_uz: $name_uz, name_ru: $name_ru, name_en: $name_en, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.name_uz, name_uz) &&
            const DeepCollectionEquality().equals(other.name_ru, name_ru) &&
            const DeepCollectionEquality().equals(other.name_en, name_en) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(name_uz),
      const DeepCollectionEquality().hash(name_ru),
      const DeepCollectionEquality().hash(name_en),
      image,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodProductsImplCopyWith<_$FoodProductsImpl> get copyWith =>
      __$$FoodProductsImplCopyWithImpl<_$FoodProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodProductsImplToJson(
      this,
    );
  }
}

abstract class _FoodProducts implements FoodProducts {
  const factory _FoodProducts(
      {final int? id,
      final dynamic name_uz,
      final dynamic name_ru,
      final dynamic name_en,
      final String? image,
      final int? price}) = _$FoodProductsImpl;

  factory _FoodProducts.fromJson(Map<String, dynamic> json) =
      _$FoodProductsImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get name_uz;
  @override
  dynamic get name_ru;
  @override
  dynamic get name_en;
  @override
  String? get image;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$FoodProductsImplCopyWith<_$FoodProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
