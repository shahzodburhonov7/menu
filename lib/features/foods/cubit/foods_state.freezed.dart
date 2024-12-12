// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foods_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodsBuildable {
  bool get loading => throw _privateConstructorUsedError;
  bool get loadingVegetables => throw _privateConstructorUsedError;
  bool get proLoading => throw _privateConstructorUsedError;
  bool get pageLoading => throw _privateConstructorUsedError;
  bool get orderLoading => throw _privateConstructorUsedError;
  bool get vegetablesOrder => throw _privateConstructorUsedError;
  bool get vegetablesOrderPro => throw _privateConstructorUsedError;
  int get orderCount => throw _privateConstructorUsedError;
  int get pageType => throw _privateConstructorUsedError;
  List<FoodCategory> get foodCategoryList => throw _privateConstructorUsedError;
  List<VegetablesAll> get vegetablesAll => throw _privateConstructorUsedError;
  int get tableNumber => throw _privateConstructorUsedError;
  TableOrder? get tableOrder => throw _privateConstructorUsedError;
  List<dynamic> get getTableList => throw _privateConstructorUsedError;
  List<FoodProducts> get foodPro => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get cartId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodsBuildableCopyWith<FoodsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodsBuildableCopyWith<$Res> {
  factory $FoodsBuildableCopyWith(
          FoodsBuildable value, $Res Function(FoodsBuildable) then) =
      _$FoodsBuildableCopyWithImpl<$Res, FoodsBuildable>;
  @useResult
  $Res call(
      {bool loading,
      bool loadingVegetables,
      bool proLoading,
      bool pageLoading,
      bool orderLoading,
      bool vegetablesOrder,
      bool vegetablesOrderPro,
      int orderCount,
      int pageType,
      List<FoodCategory> foodCategoryList,
      List<VegetablesAll> vegetablesAll,
      int tableNumber,
      TableOrder? tableOrder,
      List<dynamic> getTableList,
      List<FoodProducts> foodPro,
      String type,
      int cartId});

  $TableOrderCopyWith<$Res>? get tableOrder;
}

/// @nodoc
class _$FoodsBuildableCopyWithImpl<$Res, $Val extends FoodsBuildable>
    implements $FoodsBuildableCopyWith<$Res> {
  _$FoodsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loadingVegetables = null,
    Object? proLoading = null,
    Object? pageLoading = null,
    Object? orderLoading = null,
    Object? vegetablesOrder = null,
    Object? vegetablesOrderPro = null,
    Object? orderCount = null,
    Object? pageType = null,
    Object? foodCategoryList = null,
    Object? vegetablesAll = null,
    Object? tableNumber = null,
    Object? tableOrder = freezed,
    Object? getTableList = null,
    Object? foodPro = null,
    Object? type = null,
    Object? cartId = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingVegetables: null == loadingVegetables
          ? _value.loadingVegetables
          : loadingVegetables // ignore: cast_nullable_to_non_nullable
              as bool,
      proLoading: null == proLoading
          ? _value.proLoading
          : proLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetablesOrder: null == vegetablesOrder
          ? _value.vegetablesOrder
          : vegetablesOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetablesOrderPro: null == vegetablesOrderPro
          ? _value.vegetablesOrderPro
          : vegetablesOrderPro // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as int,
      foodCategoryList: null == foodCategoryList
          ? _value.foodCategoryList
          : foodCategoryList // ignore: cast_nullable_to_non_nullable
              as List<FoodCategory>,
      vegetablesAll: null == vegetablesAll
          ? _value.vegetablesAll
          : vegetablesAll // ignore: cast_nullable_to_non_nullable
              as List<VegetablesAll>,
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
      getTableList: null == getTableList
          ? _value.getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      foodPro: null == foodPro
          ? _value.foodPro
          : foodPro // ignore: cast_nullable_to_non_nullable
              as List<FoodProducts>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$FoodsBuildableImplCopyWith<$Res>
    implements $FoodsBuildableCopyWith<$Res> {
  factory _$$FoodsBuildableImplCopyWith(_$FoodsBuildableImpl value,
          $Res Function(_$FoodsBuildableImpl) then) =
      __$$FoodsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool loadingVegetables,
      bool proLoading,
      bool pageLoading,
      bool orderLoading,
      bool vegetablesOrder,
      bool vegetablesOrderPro,
      int orderCount,
      int pageType,
      List<FoodCategory> foodCategoryList,
      List<VegetablesAll> vegetablesAll,
      int tableNumber,
      TableOrder? tableOrder,
      List<dynamic> getTableList,
      List<FoodProducts> foodPro,
      String type,
      int cartId});

  @override
  $TableOrderCopyWith<$Res>? get tableOrder;
}

/// @nodoc
class __$$FoodsBuildableImplCopyWithImpl<$Res>
    extends _$FoodsBuildableCopyWithImpl<$Res, _$FoodsBuildableImpl>
    implements _$$FoodsBuildableImplCopyWith<$Res> {
  __$$FoodsBuildableImplCopyWithImpl(
      _$FoodsBuildableImpl _value, $Res Function(_$FoodsBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loadingVegetables = null,
    Object? proLoading = null,
    Object? pageLoading = null,
    Object? orderLoading = null,
    Object? vegetablesOrder = null,
    Object? vegetablesOrderPro = null,
    Object? orderCount = null,
    Object? pageType = null,
    Object? foodCategoryList = null,
    Object? vegetablesAll = null,
    Object? tableNumber = null,
    Object? tableOrder = freezed,
    Object? getTableList = null,
    Object? foodPro = null,
    Object? type = null,
    Object? cartId = null,
  }) {
    return _then(_$FoodsBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingVegetables: null == loadingVegetables
          ? _value.loadingVegetables
          : loadingVegetables // ignore: cast_nullable_to_non_nullable
              as bool,
      proLoading: null == proLoading
          ? _value.proLoading
          : proLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pageLoading: null == pageLoading
          ? _value.pageLoading
          : pageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetablesOrder: null == vegetablesOrder
          ? _value.vegetablesOrder
          : vegetablesOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      vegetablesOrderPro: null == vegetablesOrderPro
          ? _value.vegetablesOrderPro
          : vegetablesOrderPro // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as int,
      foodCategoryList: null == foodCategoryList
          ? _value._foodCategoryList
          : foodCategoryList // ignore: cast_nullable_to_non_nullable
              as List<FoodCategory>,
      vegetablesAll: null == vegetablesAll
          ? _value._vegetablesAll
          : vegetablesAll // ignore: cast_nullable_to_non_nullable
              as List<VegetablesAll>,
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
      getTableList: null == getTableList
          ? _value._getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      foodPro: null == foodPro
          ? _value._foodPro
          : foodPro // ignore: cast_nullable_to_non_nullable
              as List<FoodProducts>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FoodsBuildableImpl implements _FoodsBuildable {
  const _$FoodsBuildableImpl(
      {this.loading = false,
      this.loadingVegetables = false,
      this.proLoading = false,
      this.pageLoading = false,
      this.orderLoading = false,
      this.vegetablesOrder = false,
      this.vegetablesOrderPro = false,
      this.orderCount = 0,
      this.pageType = 0,
      final List<FoodCategory> foodCategoryList = const [],
      final List<VegetablesAll> vegetablesAll = const [],
      this.tableNumber = 0,
      this.tableOrder,
      final List<dynamic> getTableList = const [],
      final List<FoodProducts> foodPro = const [],
      this.type = "",
      this.cartId = 0})
      : _foodCategoryList = foodCategoryList,
        _vegetablesAll = vegetablesAll,
        _getTableList = getTableList,
        _foodPro = foodPro;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loadingVegetables;
  @override
  @JsonKey()
  final bool proLoading;
  @override
  @JsonKey()
  final bool pageLoading;
  @override
  @JsonKey()
  final bool orderLoading;
  @override
  @JsonKey()
  final bool vegetablesOrder;
  @override
  @JsonKey()
  final bool vegetablesOrderPro;
  @override
  @JsonKey()
  final int orderCount;
  @override
  @JsonKey()
  final int pageType;
  final List<FoodCategory> _foodCategoryList;
  @override
  @JsonKey()
  List<FoodCategory> get foodCategoryList {
    if (_foodCategoryList is EqualUnmodifiableListView)
      return _foodCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodCategoryList);
  }

  final List<VegetablesAll> _vegetablesAll;
  @override
  @JsonKey()
  List<VegetablesAll> get vegetablesAll {
    if (_vegetablesAll is EqualUnmodifiableListView) return _vegetablesAll;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vegetablesAll);
  }

  @override
  @JsonKey()
  final int tableNumber;
  @override
  final TableOrder? tableOrder;
  final List<dynamic> _getTableList;
  @override
  @JsonKey()
  List<dynamic> get getTableList {
    if (_getTableList is EqualUnmodifiableListView) return _getTableList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getTableList);
  }

  final List<FoodProducts> _foodPro;
  @override
  @JsonKey()
  List<FoodProducts> get foodPro {
    if (_foodPro is EqualUnmodifiableListView) return _foodPro;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodPro);
  }

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int cartId;

  @override
  String toString() {
    return 'FoodsBuildable(loading: $loading, loadingVegetables: $loadingVegetables, proLoading: $proLoading, pageLoading: $pageLoading, orderLoading: $orderLoading, vegetablesOrder: $vegetablesOrder, vegetablesOrderPro: $vegetablesOrderPro, orderCount: $orderCount, pageType: $pageType, foodCategoryList: $foodCategoryList, vegetablesAll: $vegetablesAll, tableNumber: $tableNumber, tableOrder: $tableOrder, getTableList: $getTableList, foodPro: $foodPro, type: $type, cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodsBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loadingVegetables, loadingVegetables) ||
                other.loadingVegetables == loadingVegetables) &&
            (identical(other.proLoading, proLoading) ||
                other.proLoading == proLoading) &&
            (identical(other.pageLoading, pageLoading) ||
                other.pageLoading == pageLoading) &&
            (identical(other.orderLoading, orderLoading) ||
                other.orderLoading == orderLoading) &&
            (identical(other.vegetablesOrder, vegetablesOrder) ||
                other.vegetablesOrder == vegetablesOrder) &&
            (identical(other.vegetablesOrderPro, vegetablesOrderPro) ||
                other.vegetablesOrderPro == vegetablesOrderPro) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            const DeepCollectionEquality()
                .equals(other._foodCategoryList, _foodCategoryList) &&
            const DeepCollectionEquality()
                .equals(other._vegetablesAll, _vegetablesAll) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.tableOrder, tableOrder) ||
                other.tableOrder == tableOrder) &&
            const DeepCollectionEquality()
                .equals(other._getTableList, _getTableList) &&
            const DeepCollectionEquality().equals(other._foodPro, _foodPro) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      loadingVegetables,
      proLoading,
      pageLoading,
      orderLoading,
      vegetablesOrder,
      vegetablesOrderPro,
      orderCount,
      pageType,
      const DeepCollectionEquality().hash(_foodCategoryList),
      const DeepCollectionEquality().hash(_vegetablesAll),
      tableNumber,
      tableOrder,
      const DeepCollectionEquality().hash(_getTableList),
      const DeepCollectionEquality().hash(_foodPro),
      type,
      cartId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodsBuildableImplCopyWith<_$FoodsBuildableImpl> get copyWith =>
      __$$FoodsBuildableImplCopyWithImpl<_$FoodsBuildableImpl>(
          this, _$identity);
}

abstract class _FoodsBuildable implements FoodsBuildable {
  const factory _FoodsBuildable(
      {final bool loading,
      final bool loadingVegetables,
      final bool proLoading,
      final bool pageLoading,
      final bool orderLoading,
      final bool vegetablesOrder,
      final bool vegetablesOrderPro,
      final int orderCount,
      final int pageType,
      final List<FoodCategory> foodCategoryList,
      final List<VegetablesAll> vegetablesAll,
      final int tableNumber,
      final TableOrder? tableOrder,
      final List<dynamic> getTableList,
      final List<FoodProducts> foodPro,
      final String type,
      final int cartId}) = _$FoodsBuildableImpl;

  @override
  bool get loading;
  @override
  bool get loadingVegetables;
  @override
  bool get proLoading;
  @override
  bool get pageLoading;
  @override
  bool get orderLoading;
  @override
  bool get vegetablesOrder;
  @override
  bool get vegetablesOrderPro;
  @override
  int get orderCount;
  @override
  int get pageType;
  @override
  List<FoodCategory> get foodCategoryList;
  @override
  List<VegetablesAll> get vegetablesAll;
  @override
  int get tableNumber;
  @override
  TableOrder? get tableOrder;
  @override
  List<dynamic> get getTableList;
  @override
  List<FoodProducts> get foodPro;
  @override
  String get type;
  @override
  int get cartId;
  @override
  @JsonKey(ignore: true)
  _$$FoodsBuildableImplCopyWith<_$FoodsBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodsListenable {}

/// @nodoc
abstract class $FoodsListenableCopyWith<$Res> {
  factory $FoodsListenableCopyWith(
          FoodsListenable value, $Res Function(FoodsListenable) then) =
      _$FoodsListenableCopyWithImpl<$Res, FoodsListenable>;
}

/// @nodoc
class _$FoodsListenableCopyWithImpl<$Res, $Val extends FoodsListenable>
    implements $FoodsListenableCopyWith<$Res> {
  _$FoodsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FoodsListenableImplCopyWith<$Res> {
  factory _$$FoodsListenableImplCopyWith(_$FoodsListenableImpl value,
          $Res Function(_$FoodsListenableImpl) then) =
      __$$FoodsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodsListenableImplCopyWithImpl<$Res>
    extends _$FoodsListenableCopyWithImpl<$Res, _$FoodsListenableImpl>
    implements _$$FoodsListenableImplCopyWith<$Res> {
  __$$FoodsListenableImplCopyWithImpl(
      _$FoodsListenableImpl _value, $Res Function(_$FoodsListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FoodsListenableImpl implements _FoodsListenable {
  const _$FoodsListenableImpl();

  @override
  String toString() {
    return 'FoodsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FoodsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FoodsListenable implements FoodsListenable {
  const factory _FoodsListenable() = _$FoodsListenableImpl;
}
