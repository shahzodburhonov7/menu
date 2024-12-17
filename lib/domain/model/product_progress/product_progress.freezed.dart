// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductProgress _$ProductProgressFromJson(Map<String, dynamic> json) {
  return _ProductProgress.fromJson(json);
}

/// @nodoc
mixin _$ProductProgress {
  int? get id => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductProgressCopyWith<ProductProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductProgressCopyWith<$Res> {
  factory $ProductProgressCopyWith(
          ProductProgress value, $Res Function(ProductProgress) then) =
      _$ProductProgressCopyWithImpl<$Res, ProductProgress>;
  @useResult
  $Res call(
      {int? id,
      Cart? cart,
      String? status,
      int? total_price,
      DateTime? date,
      String? time,
      String? full_name});

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$ProductProgressCopyWithImpl<$Res, $Val extends ProductProgress>
    implements $ProductProgressCopyWith<$Res> {
  _$ProductProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? status = freezed,
    Object? total_price = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? full_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductProgressImplCopyWith<$Res>
    implements $ProductProgressCopyWith<$Res> {
  factory _$$ProductProgressImplCopyWith(_$ProductProgressImpl value,
          $Res Function(_$ProductProgressImpl) then) =
      __$$ProductProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Cart? cart,
      String? status,
      int? total_price,
      DateTime? date,
      String? time,
      String? full_name});

  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$ProductProgressImplCopyWithImpl<$Res>
    extends _$ProductProgressCopyWithImpl<$Res, _$ProductProgressImpl>
    implements _$$ProductProgressImplCopyWith<$Res> {
  __$$ProductProgressImplCopyWithImpl(
      _$ProductProgressImpl _value, $Res Function(_$ProductProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? status = freezed,
    Object? total_price = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? full_name = freezed,
  }) {
    return _then(_$ProductProgressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductProgressImpl implements _ProductProgress {
  const _$ProductProgressImpl(
      {this.id,
      this.cart,
      this.status,
      this.total_price,
      this.date,
      this.time,
      this.full_name});

  factory _$ProductProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductProgressImplFromJson(json);

  @override
  final int? id;
  @override
  final Cart? cart;
  @override
  final String? status;
  @override
  final int? total_price;
  @override
  final DateTime? date;
  @override
  final String? time;
  @override
  final String? full_name;

  @override
  String toString() {
    return 'ProductProgress(id: $id, cart: $cart, status: $status, total_price: $total_price, date: $date, time: $time, full_name: $full_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductProgressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cart, status, total_price, date, time, full_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductProgressImplCopyWith<_$ProductProgressImpl> get copyWith =>
      __$$ProductProgressImplCopyWithImpl<_$ProductProgressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductProgressImplToJson(
      this,
    );
  }
}

abstract class _ProductProgress implements ProductProgress {
  const factory _ProductProgress(
      {final int? id,
      final Cart? cart,
      final String? status,
      final int? total_price,
      final DateTime? date,
      final String? time,
      final String? full_name}) = _$ProductProgressImpl;

  factory _ProductProgress.fromJson(Map<String, dynamic> json) =
      _$ProductProgressImpl.fromJson;

  @override
  int? get id;
  @override
  Cart? get cart;
  @override
  String? get status;
  @override
  int? get total_price;
  @override
  DateTime? get date;
  @override
  String? get time;
  @override
  String? get full_name;
  @override
  @JsonKey(ignore: true)
  _$$ProductProgressImplCopyWith<_$ProductProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get id => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  List<CartItem>? get cart_item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({int? id, int? total_price, List<CartItem>? cart_item});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

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
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? total_price, List<CartItem>? cart_item});
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? total_price = freezed,
    Object? cart_item = freezed,
  }) {
    return _then(_$CartImpl(
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
class _$CartImpl implements _Cart {
  const _$CartImpl({this.id, this.total_price, final List<CartItem>? cart_item})
      : _cart_item = cart_item;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

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
    return 'Cart(id: $id, total_price: $total_price, cart_item: $cart_item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
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
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {final int? id,
      final int? total_price,
      final List<CartItem>? cart_item}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  int? get id;
  @override
  int? get total_price;
  @override
  List<CartItem>? get cart_item;
  @override
  @JsonKey(ignore: true)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
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
