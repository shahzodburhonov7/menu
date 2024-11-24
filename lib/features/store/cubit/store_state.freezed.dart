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
  int get cartId => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get orderLoading => throw _privateConstructorUsedError;
  bool get confirmLoading => throw _privateConstructorUsedError;
  List<dynamic> get getTableList => throw _privateConstructorUsedError;
  TableOrder? get tableOrder => throw _privateConstructorUsedError;

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int cartId,
      bool loading,
      bool orderLoading,
      bool confirmLoading,
      List<dynamic> getTableList,
      TableOrder? tableOrder});

  $TableOrderCopyWith<$Res>? get tableOrder;
}

/// @nodoc
class _$StoreBuildableCopyWithImpl<$Res, $Val extends StoreBuildable>
    implements $StoreBuildableCopyWith<$Res> {
  _$StoreBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = null,
    Object? cartId = null,
    Object? loading = null,
    Object? orderLoading = null,
    Object? confirmLoading = null,
    Object? getTableList = null,
    Object? tableOrder = freezed,
  }) {
    return _then(_value.copyWith(
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
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
      getTableList: null == getTableList
          ? _value.getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
    ) as $Val);
  }

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$StoreBuildableImplCopyWith<$Res>
    implements $StoreBuildableCopyWith<$Res> {
  factory _$$StoreBuildableImplCopyWith(_$StoreBuildableImpl value,
          $Res Function(_$StoreBuildableImpl) then) =
      __$$StoreBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int tableNumber,
      int cartId,
      bool loading,
      bool orderLoading,
      bool confirmLoading,
      List<dynamic> getTableList,
      TableOrder? tableOrder});

  @override
  $TableOrderCopyWith<$Res>? get tableOrder;
}

/// @nodoc
class __$$StoreBuildableImplCopyWithImpl<$Res>
    extends _$StoreBuildableCopyWithImpl<$Res, _$StoreBuildableImpl>
    implements _$$StoreBuildableImplCopyWith<$Res> {
  __$$StoreBuildableImplCopyWithImpl(
      _$StoreBuildableImpl _value, $Res Function(_$StoreBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = null,
    Object? cartId = null,
    Object? loading = null,
    Object? orderLoading = null,
    Object? confirmLoading = null,
    Object? getTableList = null,
    Object? tableOrder = freezed,
  }) {
    return _then(_$StoreBuildableImpl(
      tableNumber: null == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
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
      getTableList: null == getTableList
          ? _value._getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      tableOrder: freezed == tableOrder
          ? _value.tableOrder
          : tableOrder // ignore: cast_nullable_to_non_nullable
              as TableOrder?,
    ));
  }
}

/// @nodoc

class _$StoreBuildableImpl implements _StoreBuildable {
  const _$StoreBuildableImpl(
      {this.tableNumber = 0,
      this.cartId = 0,
      this.loading = false,
      this.orderLoading = false,
      this.confirmLoading = false,
      final List<dynamic> getTableList = const [],
      this.tableOrder})
      : _getTableList = getTableList;

  @override
  @JsonKey()
  final int tableNumber;
  @override
  @JsonKey()
  final int cartId;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool orderLoading;
  @override
  @JsonKey()
  final bool confirmLoading;
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
  String toString() {
    return 'StoreBuildable(tableNumber: $tableNumber, cartId: $cartId, loading: $loading, orderLoading: $orderLoading, confirmLoading: $confirmLoading, getTableList: $getTableList, tableOrder: $tableOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreBuildableImpl &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.orderLoading, orderLoading) ||
                other.orderLoading == orderLoading) &&
            (identical(other.confirmLoading, confirmLoading) ||
                other.confirmLoading == confirmLoading) &&
            const DeepCollectionEquality()
                .equals(other._getTableList, _getTableList) &&
            (identical(other.tableOrder, tableOrder) ||
                other.tableOrder == tableOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tableNumber,
      cartId,
      loading,
      orderLoading,
      confirmLoading,
      const DeepCollectionEquality().hash(_getTableList),
      tableOrder);

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreBuildableImplCopyWith<_$StoreBuildableImpl> get copyWith =>
      __$$StoreBuildableImplCopyWithImpl<_$StoreBuildableImpl>(
          this, _$identity);
}

abstract class _StoreBuildable implements StoreBuildable {
  const factory _StoreBuildable(
      {final int tableNumber,
      final int cartId,
      final bool loading,
      final bool orderLoading,
      final bool confirmLoading,
      final List<dynamic> getTableList,
      final TableOrder? tableOrder}) = _$StoreBuildableImpl;

  @override
  int get tableNumber;
  @override
  int get cartId;
  @override
  bool get loading;
  @override
  bool get orderLoading;
  @override
  bool get confirmLoading;
  @override
  List<dynamic> get getTableList;
  @override
  TableOrder? get tableOrder;

  /// Create a copy of StoreBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreBuildableImplCopyWith<_$StoreBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreListenable {}

/// @nodoc
abstract class $StoreListenableCopyWith<$Res> {
  factory $StoreListenableCopyWith(
          StoreListenable value, $Res Function(StoreListenable) then) =
      _$StoreListenableCopyWithImpl<$Res, StoreListenable>;
}

/// @nodoc
class _$StoreListenableCopyWithImpl<$Res, $Val extends StoreListenable>
    implements $StoreListenableCopyWith<$Res> {
  _$StoreListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StoreListenableImplCopyWith<$Res> {
  factory _$$StoreListenableImplCopyWith(_$StoreListenableImpl value,
          $Res Function(_$StoreListenableImpl) then) =
      __$$StoreListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreListenableImplCopyWithImpl<$Res>
    extends _$StoreListenableCopyWithImpl<$Res, _$StoreListenableImpl>
    implements _$$StoreListenableImplCopyWith<$Res> {
  __$$StoreListenableImplCopyWithImpl(
      _$StoreListenableImpl _value, $Res Function(_$StoreListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StoreListenableImpl implements _StoreListenable {
  const _$StoreListenableImpl();

  @override
  String toString() {
    return 'StoreListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _StoreListenable implements StoreListenable {
  const factory _StoreListenable() = _$StoreListenableImpl;
}
