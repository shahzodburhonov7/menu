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
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  /// Serializes this FoodProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodProductsCopyWith<FoodProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodProductsCopyWith<$Res> {
  factory $FoodProductsCopyWith(
          FoodProducts value, $Res Function(FoodProducts) then) =
      _$FoodProductsCopyWithImpl<$Res, FoodProducts>;
  @useResult
  $Res call({int? id, String? name, String? image, int? price});
}

/// @nodoc
class _$FoodProductsCopyWithImpl<$Res, $Val extends FoodProducts>
    implements $FoodProductsCopyWith<$Res> {
  _$FoodProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({int? id, String? name, String? image, int? price});
}

/// @nodoc
class __$$FoodProductsImplCopyWithImpl<$Res>
    extends _$FoodProductsCopyWithImpl<$Res, _$FoodProductsImpl>
    implements _$$FoodProductsImplCopyWith<$Res> {
  __$$FoodProductsImplCopyWithImpl(
      _$FoodProductsImpl _value, $Res Function(_$FoodProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_$FoodProductsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
  const _$FoodProductsImpl({this.id, this.name, this.image, this.price});

  factory _$FoodProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodProductsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final int? price;

  @override
  String toString() {
    return 'FoodProducts(id: $id, name: $name, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, price);

  /// Create a copy of FoodProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final String? name,
      final String? image,
      final int? price}) = _$FoodProductsImpl;

  factory _FoodProducts.fromJson(Map<String, dynamic> json) =
      _$FoodProductsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  int? get price;

  /// Create a copy of FoodProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodProductsImplCopyWith<_$FoodProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
