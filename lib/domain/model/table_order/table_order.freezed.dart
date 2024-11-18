// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableOrder _$TableOrderFromJson(Map<String, dynamic> json) {
  return _TableOrder.fromJson(json);
}

/// @nodoc
mixin _$TableOrder {
  int? get order_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  int? get table_number => throw _privateConstructorUsedError;

  /// Serializes this TableOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableOrderCopyWith<TableOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableOrderCopyWith<$Res> {
  factory $TableOrderCopyWith(
          TableOrder value, $Res Function(TableOrder) then) =
      _$TableOrderCopyWithImpl<$Res, TableOrder>;
  @useResult
  $Res call(
      {int? order_id,
      String? status,
      DateTime? created_at,
      Cart? cart,
      int? total_price,
      int? table_number});

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$TableOrderCopyWithImpl<$Res, $Val extends TableOrder>
    implements $TableOrderCopyWith<$Res> {
  _$TableOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? cart = freezed,
    Object? total_price = freezed,
    Object? table_number = freezed,
  }) {
    return _then(_value.copyWith(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      table_number: freezed == table_number
          ? _value.table_number
          : table_number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$TableOrderImplCopyWith<$Res>
    implements $TableOrderCopyWith<$Res> {
  factory _$$TableOrderImplCopyWith(
          _$TableOrderImpl value, $Res Function(_$TableOrderImpl) then) =
      __$$TableOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? order_id,
      String? status,
      DateTime? created_at,
      Cart? cart,
      int? total_price,
      int? table_number});

  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$TableOrderImplCopyWithImpl<$Res>
    extends _$TableOrderCopyWithImpl<$Res, _$TableOrderImpl>
    implements _$$TableOrderImplCopyWith<$Res> {
  __$$TableOrderImplCopyWithImpl(
      _$TableOrderImpl _value, $Res Function(_$TableOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? cart = freezed,
    Object? total_price = freezed,
    Object? table_number = freezed,
  }) {
    return _then(_$TableOrderImpl(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      table_number: freezed == table_number
          ? _value.table_number
          : table_number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableOrderImpl implements _TableOrder {
  const _$TableOrderImpl(
      {this.order_id,
      this.status,
      this.created_at,
      this.cart,
      this.total_price,
      this.table_number});

  factory _$TableOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableOrderImplFromJson(json);

  @override
  final int? order_id;
  @override
  final String? status;
  @override
  final DateTime? created_at;
  @override
  final Cart? cart;
  @override
  final int? total_price;
  @override
  final int? table_number;

  @override
  String toString() {
    return 'TableOrder(order_id: $order_id, status: $status, created_at: $created_at, cart: $cart, total_price: $total_price, table_number: $table_number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableOrderImpl &&
            (identical(other.order_id, order_id) ||
                other.order_id == order_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.table_number, table_number) ||
                other.table_number == table_number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order_id, status, created_at,
      cart, total_price, table_number);

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableOrderImplCopyWith<_$TableOrderImpl> get copyWith =>
      __$$TableOrderImplCopyWithImpl<_$TableOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableOrderImplToJson(
      this,
    );
  }
}

abstract class _TableOrder implements TableOrder {
  const factory _TableOrder(
      {final int? order_id,
      final String? status,
      final DateTime? created_at,
      final Cart? cart,
      final int? total_price,
      final int? table_number}) = _$TableOrderImpl;

  factory _TableOrder.fromJson(Map<String, dynamic> json) =
      _$TableOrderImpl.fromJson;

  @override
  int? get order_id;
  @override
  String? get status;
  @override
  DateTime? get created_at;
  @override
  Cart? get cart;
  @override
  int? get total_price;
  @override
  int? get table_number;

  /// Create a copy of TableOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableOrderImplCopyWith<_$TableOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get id => throw _privateConstructorUsedError;
  int? get user => throw _privateConstructorUsedError;
  int? get table => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  List<CartItem>? get cart_items => throw _privateConstructorUsedError;

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {int? id,
      int? user,
      int? table,
      int? total_price,
      List<CartItem>? cart_items});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? table = freezed,
    Object? total_price = freezed,
    Object? cart_items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      table: freezed == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cart_items: freezed == cart_items
          ? _value.cart_items
          : cart_items // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {int? id,
      int? user,
      int? table,
      int? total_price,
      List<CartItem>? cart_items});
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? table = freezed,
    Object? total_price = freezed,
    Object? cart_items = freezed,
  }) {
    return _then(_$CartImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      table: freezed == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cart_items: freezed == cart_items
          ? _value._cart_items
          : cart_items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {this.id,
      this.user,
      this.table,
      this.total_price,
      final List<CartItem>? cart_items})
      : _cart_items = cart_items;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  final int? id;
  @override
  final int? user;
  @override
  final int? table;
  @override
  final int? total_price;
  final List<CartItem>? _cart_items;
  @override
  List<CartItem>? get cart_items {
    final value = _cart_items;
    if (value == null) return null;
    if (_cart_items is EqualUnmodifiableListView) return _cart_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cart(id: $id, user: $user, table: $table, total_price: $total_price, cart_items: $cart_items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            const DeepCollectionEquality()
                .equals(other._cart_items, _cart_items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, table, total_price,
      const DeepCollectionEquality().hash(_cart_items));

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final int? user,
      final int? table,
      final int? total_price,
      final List<CartItem>? cart_items}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  int? get id;
  @override
  int? get user;
  @override
  int? get table;
  @override
  int? get total_price;
  @override
  List<CartItem>? get cart_items;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int? get id => throw _privateConstructorUsedError;
  int? get food => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get food_name => throw _privateConstructorUsedError;
  String? get food_image => throw _privateConstructorUsedError;

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int? food,
      int? quantity,
      String? price,
      String? food_name,
      String? food_image});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? food = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? food_name = freezed,
    Object? food_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      food_name: freezed == food_name
          ? _value.food_name
          : food_name // ignore: cast_nullable_to_non_nullable
              as String?,
      food_image: freezed == food_image
          ? _value.food_image
          : food_image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      int? food,
      int? quantity,
      String? price,
      String? food_name,
      String? food_image});
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? food = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? food_name = freezed,
    Object? food_image = freezed,
  }) {
    return _then(_$CartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      food_name: freezed == food_name
          ? _value.food_name
          : food_name // ignore: cast_nullable_to_non_nullable
              as String?,
      food_image: freezed == food_image
          ? _value.food_image
          : food_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl(
      {this.id,
      this.food,
      this.quantity,
      this.price,
      this.food_name,
      this.food_image});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final int? food;
  @override
  final int? quantity;
  @override
  final String? price;
  @override
  final String? food_name;
  @override
  final String? food_image;

  @override
  String toString() {
    return 'CartItem(id: $id, food: $food, quantity: $quantity, price: $price, food_name: $food_name, food_image: $food_image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.food_name, food_name) ||
                other.food_name == food_name) &&
            (identical(other.food_image, food_image) ||
                other.food_image == food_image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, food, quantity, price, food_name, food_image);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final int? food,
      final int? quantity,
      final String? price,
      final String? food_name,
      final String? food_image}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  int? get food;
  @override
  int? get quantity;
  @override
  String? get price;
  @override
  String? get food_name;
  @override
  String? get food_image;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
