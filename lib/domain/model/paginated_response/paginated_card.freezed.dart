// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedCard _$PaginatedCardFromJson(Map<String, dynamic> json) {
  return _PaginatedCard.fromJson(json);
}

/// @nodoc
mixin _$PaginatedCard {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedCardCopyWith<PaginatedCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedCardCopyWith<$Res> {
  factory $PaginatedCardCopyWith(
          PaginatedCard value, $Res Function(PaginatedCard) then) =
      _$PaginatedCardCopyWithImpl<$Res, PaginatedCard>;
  @useResult
  $Res call(
      {int? count, String? next, dynamic previous, List<Result>? results});
}

/// @nodoc
class _$PaginatedCardCopyWithImpl<$Res, $Val extends PaginatedCard>
    implements $PaginatedCardCopyWith<$Res> {
  _$PaginatedCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedCardImplCopyWith<$Res>
    implements $PaginatedCardCopyWith<$Res> {
  factory _$$PaginatedCardImplCopyWith(
          _$PaginatedCardImpl value, $Res Function(_$PaginatedCardImpl) then) =
      __$$PaginatedCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, dynamic previous, List<Result>? results});
}

/// @nodoc
class __$$PaginatedCardImplCopyWithImpl<$Res>
    extends _$PaginatedCardCopyWithImpl<$Res, _$PaginatedCardImpl>
    implements _$$PaginatedCardImplCopyWith<$Res> {
  __$$PaginatedCardImplCopyWithImpl(
      _$PaginatedCardImpl _value, $Res Function(_$PaginatedCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$PaginatedCardImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedCardImpl implements _PaginatedCard {
  const _$PaginatedCardImpl(
      {this.count, this.next, this.previous, final List<Result>? results})
      : _results = results;

  factory _$PaginatedCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedCardImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final dynamic previous;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaginatedCard(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedCardImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      next,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedCardImplCopyWith<_$PaginatedCardImpl> get copyWith =>
      __$$PaginatedCardImplCopyWithImpl<_$PaginatedCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedCardImplToJson(
      this,
    );
  }
}

abstract class _PaginatedCard implements PaginatedCard {
  const factory _PaginatedCard(
      {final int? count,
      final String? next,
      final dynamic previous,
      final List<Result>? results}) = _$PaginatedCardImpl;

  factory _PaginatedCard.fromJson(Map<String, dynamic> json) =
      _$PaginatedCardImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  dynamic get previous;
  @override
  List<Result>? get results;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedCardImplCopyWith<_$PaginatedCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  Cart? get cart => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  UserType? get user_type => throw _privateConstructorUsedError;
  UserFullName? get user_full_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      Cart? cart,
      DateTime? date,
      String? time,
      int? total_price,
      UserType? user_type,
      UserFullName? user_full_name});

  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? total_price = freezed,
    Object? user_type = freezed,
    Object? user_full_name = freezed,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      user_type: freezed == user_type
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      user_full_name: freezed == user_full_name
          ? _value.user_full_name
          : user_full_name // ignore: cast_nullable_to_non_nullable
              as UserFullName?,
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
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Cart? cart,
      DateTime? date,
      String? time,
      int? total_price,
      UserType? user_type,
      UserFullName? user_full_name});

  @override
  $CartCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? total_price = freezed,
    Object? user_type = freezed,
    Object? user_full_name = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      user_type: freezed == user_type
          ? _value.user_type
          : user_type // ignore: cast_nullable_to_non_nullable
              as UserType?,
      user_full_name: freezed == user_full_name
          ? _value.user_full_name
          : user_full_name // ignore: cast_nullable_to_non_nullable
              as UserFullName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.cart,
      this.date,
      this.time,
      this.total_price,
      this.user_type,
      this.user_full_name});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  @override
  final Cart? cart;
  @override
  final DateTime? date;
  @override
  final String? time;
  @override
  final int? total_price;
  @override
  final UserType? user_type;
  @override
  final UserFullName? user_full_name;

  @override
  String toString() {
    return 'Result(id: $id, cart: $cart, date: $date, time: $time, total_price: $total_price, user_type: $user_type, user_full_name: $user_full_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.user_type, user_type) ||
                other.user_type == user_type) &&
            (identical(other.user_full_name, user_full_name) ||
                other.user_full_name == user_full_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cart, date, time,
      total_price, user_type, user_full_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final Cart? cart,
      final DateTime? date,
      final String? time,
      final int? total_price,
      final UserType? user_type,
      final UserFullName? user_full_name}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  Cart? get cart;
  @override
  DateTime? get date;
  @override
  String? get time;
  @override
  int? get total_price;
  @override
  UserType? get user_type;
  @override
  UserFullName? get user_full_name;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get id => throw _privateConstructorUsedError;
  int? get table_number => throw _privateConstructorUsedError;
  List<CartItem>? get cart_items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({int? id, int? table_number, List<CartItem>? cart_items});
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
    Object? table_number = freezed,
    Object? cart_items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      table_number: freezed == table_number
          ? _value.table_number
          : table_number // ignore: cast_nullable_to_non_nullable
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
  $Res call({int? id, int? table_number, List<CartItem>? cart_items});
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
    Object? table_number = freezed,
    Object? cart_items = freezed,
  }) {
    return _then(_$CartImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      table_number: freezed == table_number
          ? _value.table_number
          : table_number // ignore: cast_nullable_to_non_nullable
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
      {this.id, this.table_number, final List<CartItem>? cart_items})
      : _cart_items = cart_items;

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  final int? id;
  @override
  final int? table_number;
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
    return 'Cart(id: $id, table_number: $table_number, cart_items: $cart_items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.table_number, table_number) ||
                other.table_number == table_number) &&
            const DeepCollectionEquality()
                .equals(other._cart_items, _cart_items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, table_number,
      const DeepCollectionEquality().hash(_cart_items));

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
      final int? table_number,
      final List<CartItem>? cart_items}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  int? get id;
  @override
  int? get table_number;
  @override
  List<CartItem>? get cart_items;
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
  String? get food => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

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
  $Res call({int? id, String? food, int? quantity});
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
    Object? food = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
  $Res call({int? id, String? food, int? quantity});
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
    Object? food = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$CartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      food: freezed == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  const _$CartItemImpl({this.id, this.food, this.quantity});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? food;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'CartItem(id: $id, food: $food, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, food, quantity);

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
      final String? food,
      final int? quantity}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get food;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
