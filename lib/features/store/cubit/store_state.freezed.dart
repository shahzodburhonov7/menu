// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreBuildable {
  int get tableNumber => throw _privateConstructorUsedError;
  int get tableNumberProduct => throw _privateConstructorUsedError;
  int get cartId => throw _privateConstructorUsedError;
  int get cartIdProduct => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get orderLoading => throw _privateConstructorUsedError;
  bool get confirmLoading => throw _privateConstructorUsedError;
  bool get confirmLoadingProduct => throw _privateConstructorUsedError;
  bool get productLoading => throw _privateConstructorUsedError;
  List<dynamic> get getTableList => throw _privateConstructorUsedError;
  TableOrder? get tableOrder => throw _privateConstructorUsedError;
  ProductCard? get tableOrderProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreBuildableCopyWith<StoreBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBuildableCopyWith<$Res> {
  factory $StoreBuildableCopyWith(
          StoreBuildable value, $Res Function(StoreBuildable) then) =
      _$StoreBuildableCopyWithImpl<$Res, StoreBuildable>;
  @useResult
  $Res call(
      {int tableNumber,
      int tableNumberProduct,
      int cartId,
      int cartIdProduct,
      bool loading,
      bool orderLoading,
      bool confirmLoading,
      bool confirmLoadingProduct,
      bool productLoading,
      List<dynamic> getTableList,
      TableOrder? tableOrder,
      ProductCard? tableOrderProduct});

  $TableOrderCopyWith<$Res>? get tableOrder;
  $ProductCardCopyWith<$Res>? get tableOrderProduct;
}

/// @nodoc
class _$StoreBuildableCopyWithImpl<$Res, $Val extends StoreBuildable>
    implements $StoreBuildableCopyWith<$Res> {
  _$StoreBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = null,
    Object? tableNumberProduct = null,
    Object? cartId = null,
    Object? cartIdProduct = null,
    Object? loading = null,
    Object? orderLoading = null,
    Object? confirmLoading = null,
    Object? confirmLoadingProduct = null,
    Object? productLoading = null,
    Object? getTableList = null,
    Object? tableOrder = freezed,
    Object? tableOrderProduct = freezed,
  }) {
    return _then(_value.copyWith(
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tableNumberProduct: null == tableNumberProduct
          ? _value.tableNumberProduct
          : tableNumberProduct // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      cartIdProduct: null == cartIdProduct
          ? _value.cartIdProduct
          : cartIdProduct // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmLoading: null == confirmLoading
          ? _value.confirmLoading
          : confirmLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmLoadingProduct: null == confirmLoadingProduct
          ? _value.confirmLoadingProduct
          : confirmLoadingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getTableList: null == getTableList
          ? _value.getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
      tableOrderProduct: freezed == tableOrderProduct
          ? _value.tableOrderProduct
          : tableOrderProduct // ignore: cast_nullable_to_non_nullable
              as ProductCard?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableOrderCopyWith<$Res>? get tableOrder {
    if (_value.tableOrder == null) {
      return null;
    }

    return $TableOrderCopyWith<$Res>(_value.tableOrder!, (value) {
      return _then(_value.copyWith(tableOrder: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCardCopyWith<$Res>? get tableOrderProduct {
    if (_value.tableOrderProduct == null) {
      return null;
    }

    return $ProductCardCopyWith<$Res>(_value.tableOrderProduct!, (value) {
      return _then(_value.copyWith(tableOrderProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreBuildableImplCopyWith<$Res>
    implements $StoreBuildableCopyWith<$Res> {
  factory _$$StoreBuildableImplCopyWith(_$StoreBuildableImpl value,
          $Res Function(_$StoreBuildableImpl) then) =
      __$$StoreBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tableNumber,
      int tableNumberProduct,
      int cartId,
      int cartIdProduct,
      bool loading,
      bool orderLoading,
      bool confirmLoading,
      bool confirmLoadingProduct,
      bool productLoading,
      List<dynamic> getTableList,
      TableOrder? tableOrder,
      ProductCard? tableOrderProduct});

  @override
  $TableOrderCopyWith<$Res>? get tableOrder;
  @override
  $ProductCardCopyWith<$Res>? get tableOrderProduct;
}

/// @nodoc
class __$$StoreBuildableImplCopyWithImpl<$Res>
    extends _$StoreBuildableCopyWithImpl<$Res, _$StoreBuildableImpl>
    implements _$$StoreBuildableImplCopyWith<$Res> {
  __$$StoreBuildableImplCopyWithImpl(
      _$StoreBuildableImpl _value, $Res Function(_$StoreBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = null,
    Object? tableNumberProduct = null,
    Object? cartId = null,
    Object? cartIdProduct = null,
    Object? loading = null,
    Object? orderLoading = null,
    Object? confirmLoading = null,
    Object? confirmLoadingProduct = null,
    Object? productLoading = null,
    Object? getTableList = null,
    Object? tableOrder = freezed,
    Object? tableOrderProduct = freezed,
  }) {
    return _then(_$StoreBuildableImpl(
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tableNumberProduct: null == tableNumberProduct
          ? _value.tableNumberProduct
          : tableNumberProduct // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      cartIdProduct: null == cartIdProduct
          ? _value.cartIdProduct
          : cartIdProduct // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmLoading: null == confirmLoading
          ? _value.confirmLoading
          : confirmLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmLoadingProduct: null == confirmLoadingProduct
          ? _value.confirmLoadingProduct
          : confirmLoadingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productLoading: null == productLoading
          ? _value.productLoading
          : productLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getTableList: null == getTableList
          ? _value._getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
      tableOrderProduct: freezed == tableOrderProduct
          ? _value.tableOrderProduct
          : tableOrderProduct // ignore: cast_nullable_to_non_nullable
              as ProductCard?,
    ));
  }
}

/// @nodoc

class _$StoreBuildableImpl implements _StoreBuildable {
  const _$StoreBuildableImpl(
      {this.tableNumber = 0,
      this.tableNumberProduct = 0,
      this.cartId = 0,
      this.cartIdProduct = 0,
      this.loading = false,
      this.orderLoading = false,
      this.confirmLoading = false,
      this.confirmLoadingProduct = false,
      this.productLoading = false,
      final List<dynamic> getTableList = const [],
      this.tableOrder,
      this.tableOrderProduct})
      : _getTableList = getTableList;

  @override
  @JsonKey()
  final int tableNumber;
  @override
  @JsonKey()
  final int tableNumberProduct;
  @override
  @JsonKey()
  final int cartId;
  @override
  @JsonKey()
  final int cartIdProduct;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool orderLoading;
  @override
  @JsonKey()
  final bool confirmLoading;
  @override
  @JsonKey()
  final bool confirmLoadingProduct;
  @override
  @JsonKey()
  final bool productLoading;
  final List<dynamic> _getTableList;
  @override
  @JsonKey()
  List<dynamic> get getTableList {
    if (_getTableList is EqualUnmodifiableListView) return _getTableList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getTableList);
  }

  @override
  final TableOrder? tableOrder;
  @override
  final ProductCard? tableOrderProduct;

  @override
  String toString() {
    return 'StoreBuildable(tableNumber: $tableNumber, tableNumberProduct: $tableNumberProduct, cartId: $cartId, cartIdProduct: $cartIdProduct, loading: $loading, orderLoading: $orderLoading, confirmLoading: $confirmLoading, confirmLoadingProduct: $confirmLoadingProduct, productLoading: $productLoading, getTableList: $getTableList, tableOrder: $tableOrder, tableOrderProduct: $tableOrderProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBuildableImpl &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.tableNumberProduct, tableNumberProduct) ||
                other.tableNumberProduct == tableNumberProduct) &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cartIdProduct, cartIdProduct) ||
                other.cartIdProduct == cartIdProduct) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.orderLoading, orderLoading) ||
                other.orderLoading == orderLoading) &&
            (identical(other.confirmLoading, confirmLoading) ||
                other.confirmLoading == confirmLoading) &&
            (identical(other.confirmLoadingProduct, confirmLoadingProduct) ||
                other.confirmLoadingProduct == confirmLoadingProduct) &&
            (identical(other.productLoading, productLoading) ||
                other.productLoading == productLoading) &&
            const DeepCollectionEquality()
                .equals(other._getTableList, _getTableList) &&
            (identical(other.tableOrder, tableOrder) ||
                other.tableOrder == tableOrder) &&
            (identical(other.tableOrderProduct, tableOrderProduct) ||
                other.tableOrderProduct == tableOrderProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tableNumber,
      tableNumberProduct,
      cartId,
      cartIdProduct,
      loading,
      orderLoading,
      confirmLoading,
      confirmLoadingProduct,
      productLoading,
      const DeepCollectionEquality().hash(_getTableList),
      tableOrder,
      tableOrderProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBuildableImplCopyWith<_$StoreBuildableImpl> get copyWith =>
      __$$StoreBuildableImplCopyWithImpl<_$StoreBuildableImpl>(
          this, _$identity);
}

abstract class _StoreBuildable implements StoreBuildable {
  const factory _StoreBuildable(
      {final int tableNumber,
      final int tableNumberProduct,
      final int cartId,
      final int cartIdProduct,
      final bool loading,
      final bool orderLoading,
      final bool confirmLoading,
      final bool confirmLoadingProduct,
      final bool productLoading,
      final List<dynamic> getTableList,
      final TableOrder? tableOrder,
      final ProductCard? tableOrderProduct}) = _$StoreBuildableImpl;

  @override
  int get tableNumber;
  @override
  int get tableNumberProduct;
  @override
  int get cartId;
  @override
  int get cartIdProduct;
  @override
  bool get loading;
  @override
  bool get orderLoading;
  @override
  bool get confirmLoading;
  @override
  bool get confirmLoadingProduct;
  @override
  bool get productLoading;
  @override
  List<dynamic> get getTableList;
  @override
  TableOrder? get tableOrder;
  @override
  ProductCard? get tableOrderProduct;
  @override
  @JsonKey(ignore: true)
  _$$StoreBuildableImplCopyWith<_$StoreBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreListenable {
  StoreEffect? get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreListenableCopyWith<StoreListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreListenableCopyWith<$Res> {
  factory $StoreListenableCopyWith(
          StoreListenable value, $Res Function(StoreListenable) then) =
      _$StoreListenableCopyWithImpl<$Res, StoreListenable>;
  @useResult
  $Res call({StoreEffect? effect});
}

/// @nodoc
class _$StoreListenableCopyWithImpl<$Res, $Val extends StoreListenable>
    implements $StoreListenableCopyWith<$Res> {
  _$StoreListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_value.copyWith(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as StoreEffect?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StoreListenableImplCopyWith<$Res>
    implements $StoreListenableCopyWith<$Res> {
  factory _$$StoreListenableImplCopyWith(_$StoreListenableImpl value,
          $Res Function(_$StoreListenableImpl) then) =
      __$$StoreListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StoreEffect? effect});
}

/// @nodoc
class __$$StoreListenableImplCopyWithImpl<$Res>
    extends _$StoreListenableCopyWithImpl<$Res, _$StoreListenableImpl>
    implements _$$StoreListenableImplCopyWith<$Res> {
  __$$StoreListenableImplCopyWithImpl(
      _$StoreListenableImpl _value, $Res Function(_$StoreListenableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_$StoreListenableImpl(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as StoreEffect?,
    ));
  }
}

/// @nodoc

class _$StoreListenableImpl implements _StoreListenable {
  const _$StoreListenableImpl({this.effect});

  @override
  final StoreEffect? effect;

  @override
  String toString() {
    return 'StoreListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreListenableImplCopyWith<_$StoreListenableImpl> get copyWith =>
      __$$StoreListenableImplCopyWithImpl<_$StoreListenableImpl>(
          this, _$identity);
}

abstract class _StoreListenable implements StoreListenable {
  const factory _StoreListenable({final StoreEffect? effect}) =
      _$StoreListenableImpl;

  @override
  StoreEffect? get effect;
  @override
  @JsonKey(ignore: true)
  _$$StoreListenableImplCopyWith<_$StoreListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
