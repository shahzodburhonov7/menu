// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AboutBuildable {
  bool get loading => throw _privateConstructorUsedError;
  FoodInfo? get foodInfo => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  bool get orderLoading => throw _privateConstructorUsedError;
  int get cartId => throw _privateConstructorUsedError;

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutBuildableCopyWith<AboutBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutBuildableCopyWith<$Res> {
  factory $AboutBuildableCopyWith(
          AboutBuildable value, $Res Function(AboutBuildable) then) =
      _$AboutBuildableCopyWithImpl<$Res, AboutBuildable>;
  @useResult
  $Res call(
      {bool loading,
      FoodInfo? foodInfo,
      int count,
      bool orderLoading,
      int cartId});

  $FoodInfoCopyWith<$Res>? get foodInfo;
}

/// @nodoc
class _$AboutBuildableCopyWithImpl<$Res, $Val extends AboutBuildable>
    implements $AboutBuildableCopyWith<$Res> {
  _$AboutBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? foodInfo = freezed,
    Object? count = null,
    Object? orderLoading = null,
    Object? cartId = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      foodInfo: freezed == foodInfo
          ? _value.foodInfo
          : foodInfo // ignore: cast_nullable_to_non_nullable
              as FoodInfo?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FoodInfoCopyWith<$Res>? get foodInfo {
    if (_value.foodInfo == null) {
      return null;
    }

    return $FoodInfoCopyWith<$Res>(_value.foodInfo!, (value) {
      return _then(_value.copyWith(foodInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AboutBuildableImplCopyWith<$Res>
    implements $AboutBuildableCopyWith<$Res> {
  factory _$$AboutBuildableImplCopyWith(_$AboutBuildableImpl value,
          $Res Function(_$AboutBuildableImpl) then) =
      __$$AboutBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      FoodInfo? foodInfo,
      int count,
      bool orderLoading,
      int cartId});

  @override
  $FoodInfoCopyWith<$Res>? get foodInfo;
}

/// @nodoc
class __$$AboutBuildableImplCopyWithImpl<$Res>
    extends _$AboutBuildableCopyWithImpl<$Res, _$AboutBuildableImpl>
    implements _$$AboutBuildableImplCopyWith<$Res> {
  __$$AboutBuildableImplCopyWithImpl(
      _$AboutBuildableImpl _value, $Res Function(_$AboutBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? foodInfo = freezed,
    Object? count = null,
    Object? orderLoading = null,
    Object? cartId = null,
  }) {
    return _then(_$AboutBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      foodInfo: freezed == foodInfo
          ? _value.foodInfo
          : foodInfo // ignore: cast_nullable_to_non_nullable
              as FoodInfo?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      orderLoading: null == orderLoading
          ? _value.orderLoading
          : orderLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AboutBuildableImpl implements _AboutBuildable {
  const _$AboutBuildableImpl(
      {this.loading = false,
      this.foodInfo,
      this.count = 0,
      this.orderLoading = false,
      this.cartId = 0});

  @override
  @JsonKey()
  final bool loading;
  @override
  final FoodInfo? foodInfo;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final bool orderLoading;
  @override
  @JsonKey()
  final int cartId;

  @override
  String toString() {
    return 'AboutBuildable(loading: $loading, foodInfo: $foodInfo, count: $count, orderLoading: $orderLoading, cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.foodInfo, foodInfo) ||
                other.foodInfo == foodInfo) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.orderLoading, orderLoading) ||
                other.orderLoading == orderLoading) &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, foodInfo, count, orderLoading, cartId);

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutBuildableImplCopyWith<_$AboutBuildableImpl> get copyWith =>
      __$$AboutBuildableImplCopyWithImpl<_$AboutBuildableImpl>(
          this, _$identity);
}

abstract class _AboutBuildable implements AboutBuildable {
  const factory _AboutBuildable(
      {final bool loading,
      final FoodInfo? foodInfo,
      final int count,
      final bool orderLoading,
      final int cartId}) = _$AboutBuildableImpl;

  @override
  bool get loading;
  @override
  FoodInfo? get foodInfo;
  @override
  int get count;
  @override
  bool get orderLoading;
  @override
  int get cartId;

  /// Create a copy of AboutBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutBuildableImplCopyWith<_$AboutBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AboutListenable {}

/// @nodoc
abstract class $AboutListenableCopyWith<$Res> {
  factory $AboutListenableCopyWith(
          AboutListenable value, $Res Function(AboutListenable) then) =
      _$AboutListenableCopyWithImpl<$Res, AboutListenable>;
}

/// @nodoc
class _$AboutListenableCopyWithImpl<$Res, $Val extends AboutListenable>
    implements $AboutListenableCopyWith<$Res> {
  _$AboutListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AboutListenableImplCopyWith<$Res> {
  factory _$$AboutListenableImplCopyWith(_$AboutListenableImpl value,
          $Res Function(_$AboutListenableImpl) then) =
      __$$AboutListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AboutListenableImplCopyWithImpl<$Res>
    extends _$AboutListenableCopyWithImpl<$Res, _$AboutListenableImpl>
    implements _$$AboutListenableImplCopyWith<$Res> {
  __$$AboutListenableImplCopyWithImpl(
      _$AboutListenableImpl _value, $Res Function(_$AboutListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AboutListenableImpl implements _AboutListenable {
  const _$AboutListenableImpl();

  @override
  String toString() {
    return 'AboutListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AboutListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AboutListenable implements AboutListenable {
  const factory _AboutListenable() = _$AboutListenableImpl;
}
