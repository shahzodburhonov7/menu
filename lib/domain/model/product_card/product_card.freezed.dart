// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductCard _$ProductCardFromJson(Map<String, dynamic> json) {
  return _ProductCard.fromJson(json);
}

/// @nodoc
mixin _$ProductCard {
  int? get id => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  List<CartItem>? get cart_item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCardCopyWith<ProductCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCardCopyWith<$Res> {
  factory $ProductCardCopyWith(
          ProductCard value, $Res Function(ProductCard) then) =
      _$ProductCardCopyWithImpl<$Res, ProductCard>;
  @useResult
  $Res call({int? id, int? total_price, List<CartItem>? cart_item});
}

/// @nodoc
class _$ProductCardCopyWithImpl<$Res, $Val extends ProductCard>
    implements $ProductCardCopyWith<$Res> {
  _$ProductCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total_price = freezed,
    Object? cart_item = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cart_item: freezed == cart_item
          ? _value.cart_item
          : cart_item // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCardImplCopyWith<$Res>
    implements $ProductCardCopyWith<$Res> {
  factory _$$ProductCardImplCopyWith(
          _$ProductCardImpl value, $Res Function(_$ProductCardImpl) then) =
      __$$ProductCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? total_price, List<CartItem>? cart_item});
}

/// @nodoc
class __$$ProductCardImplCopyWithImpl<$Res>
    extends _$ProductCardCopyWithImpl<$Res, _$ProductCardImpl>
    implements _$$ProductCardImplCopyWith<$Res> {
  __$$ProductCardImplCopyWithImpl(
      _$ProductCardImpl _value, $Res Function(_$ProductCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total_price = freezed,
    Object? cart_item = freezed,
  }) {
    return _then(_$ProductCardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cart_item: freezed == cart_item
          ? _value._cart_item
          : cart_item // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCardImpl implements _ProductCard {
  const _$ProductCardImpl(
      {this.id, this.total_price, final List<CartItem>? cart_item})
      : _cart_item = cart_item;

  factory _$ProductCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCardImplFromJson(json);

  @override
  final int? id;
  @override
  final int? total_price;
  final List<CartItem>? _cart_item;
  @override
  List<CartItem>? get cart_item {
    final value = _cart_item;
    if (value == null) return null;
    if (_cart_item is EqualUnmodifiableListView) return _cart_item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductCard(id: $id, total_price: $total_price, cart_item: $cart_item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            const DeepCollectionEquality()
                .equals(other._cart_item, _cart_item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, total_price,
      const DeepCollectionEquality().hash(_cart_item));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCardImplCopyWith<_$ProductCardImpl> get copyWith =>
      __$$ProductCardImplCopyWithImpl<_$ProductCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCardImplToJson(
      this,
    );
  }
}

abstract class _ProductCard implements ProductCard {
  const factory _ProductCard(
      {final int? id,
      final int? total_price,
      final List<CartItem>? cart_item}) = _$ProductCardImpl;

  factory _ProductCard.fromJson(Map<String, dynamic> json) =
      _$ProductCardImpl.fromJson;

  @override
  int? get id;
  @override
  int? get total_price;
  @override
  List<CartItem>? get cart_item;
  @override
  @JsonKey(ignore: true)
  _$$ProductCardImplCopyWith<_$ProductCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int? get id => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  String? get product_image => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get unit_status => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {int? id,
      String? product_name,
      String? product_image,
      int? weight,
      String? unit_status,
      int? price});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_name = freezed,
    Object? product_image = freezed,
    Object? weight = freezed,
    Object? unit_status = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_image: freezed == product_image
          ? _value.product_image
          : product_image // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      unit_status: freezed == unit_status
          ? _value.unit_status
          : unit_status // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
          _$CartItemImpl value, $Res Function(_$CartItemImpl) then) =
      __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? product_name,
      String? product_image,
      int? weight,
      String? unit_status,
      int? price});
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_name = freezed,
    Object? product_image = freezed,
    Object? weight = freezed,
    Object? unit_status = freezed,
    Object? price = freezed,
  }) {
    return _then(_$CartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      product_image: freezed == product_image
          ? _value.product_image
          : product_image // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      unit_status: freezed == unit_status
          ? _value.unit_status
          : unit_status // ignore: cast_nullable_to_non_nullable
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
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl(
      {this.id,
      this.product_name,
      this.product_image,
      this.weight,
      this.unit_status,
      this.price});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? product_name;
  @override
  final String? product_image;
  @override
  final int? weight;
  @override
  final String? unit_status;
  @override
  final int? price;

  @override
  String toString() {
    return 'CartItem(id: $id, product_name: $product_name, product_image: $product_image, weight: $weight, unit_status: $unit_status, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.product_image, product_image) ||
                other.product_image == product_image) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.unit_status, unit_status) ||
                other.unit_status == unit_status) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, product_name, product_image, weight, unit_status, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  const factory _CartItem(
      {final int? id,
      final String? product_name,
      final String? product_image,
      final int? weight,
      final String? unit_status,
      final int? price}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get product_name;
  @override
  String? get product_image;
  @override
  int? get weight;
  @override
  String? get unit_status;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
