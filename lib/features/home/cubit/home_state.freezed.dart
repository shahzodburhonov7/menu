// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBuildable {
  bool get postTable => throw _privateConstructorUsedError;
  bool get postCreate => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  FinishToday? get finishToday => throw _privateConstructorUsedError;
  CashierFinish? get cashierFinish => throw _privateConstructorUsedError;
  bool get cashLoading => throw _privateConstructorUsedError;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeBuildableCopyWith<HomeBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildableCopyWith<$Res> {
  factory $HomeBuildableCopyWith(
          HomeBuildable value, $Res Function(HomeBuildable) then) =
      _$HomeBuildableCopyWithImpl<$Res, HomeBuildable>;
  @useResult
  $Res call(
      {bool postTable,
      bool postCreate,
      bool loading,
      FinishToday? finishToday,
      CashierFinish? cashierFinish,
      bool cashLoading});

  $FinishTodayCopyWith<$Res>? get finishToday;
  $CashierFinishCopyWith<$Res>? get cashierFinish;
}

/// @nodoc
class _$HomeBuildableCopyWithImpl<$Res, $Val extends HomeBuildable>
    implements $HomeBuildableCopyWith<$Res> {
  _$HomeBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postTable = null,
    Object? postCreate = null,
    Object? loading = null,
    Object? finishToday = freezed,
    Object? cashierFinish = freezed,
    Object? cashLoading = null,
  }) {
    return _then(_value.copyWith(
      postTable: null == postTable
          ? _value.postTable
          : postTable // ignore: cast_nullable_to_non_nullable
              as bool,
      postCreate: null == postCreate
          ? _value.postCreate
          : postCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finishToday: freezed == finishToday
          ? _value.finishToday
          : finishToday // ignore: cast_nullable_to_non_nullable
              as FinishToday?,
      cashierFinish: freezed == cashierFinish
          ? _value.cashierFinish
          : cashierFinish // ignore: cast_nullable_to_non_nullable
              as CashierFinish?,
      cashLoading: null == cashLoading
          ? _value.cashLoading
          : cashLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinishTodayCopyWith<$Res>? get finishToday {
    if (_value.finishToday == null) {
      return null;
    }

    return $FinishTodayCopyWith<$Res>(_value.finishToday!, (value) {
      return _then(_value.copyWith(finishToday: value) as $Val);
    });
  }

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CashierFinishCopyWith<$Res>? get cashierFinish {
    if (_value.cashierFinish == null) {
      return null;
    }

    return $CashierFinishCopyWith<$Res>(_value.cashierFinish!, (value) {
      return _then(_value.copyWith(cashierFinish: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeBuildableImplCopyWith<$Res>
    implements $HomeBuildableCopyWith<$Res> {
  factory _$$HomeBuildableImplCopyWith(
          _$HomeBuildableImpl value, $Res Function(_$HomeBuildableImpl) then) =
      __$$HomeBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool postTable,
      bool postCreate,
      bool loading,
      FinishToday? finishToday,
      CashierFinish? cashierFinish,
      bool cashLoading});

  @override
  $FinishTodayCopyWith<$Res>? get finishToday;
  @override
  $CashierFinishCopyWith<$Res>? get cashierFinish;
}

/// @nodoc
class __$$HomeBuildableImplCopyWithImpl<$Res>
    extends _$HomeBuildableCopyWithImpl<$Res, _$HomeBuildableImpl>
    implements _$$HomeBuildableImplCopyWith<$Res> {
  __$$HomeBuildableImplCopyWithImpl(
      _$HomeBuildableImpl _value, $Res Function(_$HomeBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postTable = null,
    Object? postCreate = null,
    Object? loading = null,
    Object? finishToday = freezed,
    Object? cashierFinish = freezed,
    Object? cashLoading = null,
  }) {
    return _then(_$HomeBuildableImpl(
      postTable: null == postTable
          ? _value.postTable
          : postTable // ignore: cast_nullable_to_non_nullable
              as bool,
      postCreate: null == postCreate
          ? _value.postCreate
          : postCreate // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finishToday: freezed == finishToday
          ? _value.finishToday
          : finishToday // ignore: cast_nullable_to_non_nullable
              as FinishToday?,
      cashierFinish: freezed == cashierFinish
          ? _value.cashierFinish
          : cashierFinish // ignore: cast_nullable_to_non_nullable
              as CashierFinish?,
      cashLoading: null == cashLoading
          ? _value.cashLoading
          : cashLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeBuildableImpl implements _HomeBuildable {
  const _$HomeBuildableImpl(
      {this.postTable = false,
      this.postCreate = false,
      this.loading = false,
      this.finishToday,
      this.cashierFinish,
      this.cashLoading = false});

  @override
  @JsonKey()
  final bool postTable;
  @override
  @JsonKey()
  final bool postCreate;
  @override
  @JsonKey()
  final bool loading;
  @override
  final FinishToday? finishToday;
  @override
  final CashierFinish? cashierFinish;
  @override
  @JsonKey()
  final bool cashLoading;

  @override
  String toString() {
    return 'HomeBuildable(postTable: $postTable, postCreate: $postCreate, loading: $loading, finishToday: $finishToday, cashierFinish: $cashierFinish, cashLoading: $cashLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildableImpl &&
            (identical(other.postTable, postTable) ||
                other.postTable == postTable) &&
            (identical(other.postCreate, postCreate) ||
                other.postCreate == postCreate) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.finishToday, finishToday) ||
                other.finishToday == finishToday) &&
            (identical(other.cashierFinish, cashierFinish) ||
                other.cashierFinish == cashierFinish) &&
            (identical(other.cashLoading, cashLoading) ||
                other.cashLoading == cashLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postTable, postCreate, loading,
      finishToday, cashierFinish, cashLoading);

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      __$$HomeBuildableImplCopyWithImpl<_$HomeBuildableImpl>(this, _$identity);
}

abstract class _HomeBuildable implements HomeBuildable {
  const factory _HomeBuildable(
      {final bool postTable,
      final bool postCreate,
      final bool loading,
      final FinishToday? finishToday,
      final CashierFinish? cashierFinish,
      final bool cashLoading}) = _$HomeBuildableImpl;

  @override
  bool get postTable;
  @override
  bool get postCreate;
  @override
  bool get loading;
  @override
  FinishToday? get finishToday;
  @override
  CashierFinish? get cashierFinish;
  @override
  bool get cashLoading;

  /// Create a copy of HomeBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBuildableImplCopyWith<_$HomeBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeListenable {
  TableEffect? get effect => throw _privateConstructorUsedError;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeListenableCopyWith<HomeListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeListenableCopyWith<$Res> {
  factory $HomeListenableCopyWith(
          HomeListenable value, $Res Function(HomeListenable) then) =
      _$HomeListenableCopyWithImpl<$Res, HomeListenable>;
  @useResult
  $Res call({TableEffect? effect});
}

/// @nodoc
class _$HomeListenableCopyWithImpl<$Res, $Val extends HomeListenable>
    implements $HomeListenableCopyWith<$Res> {
  _$HomeListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_value.copyWith(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as TableEffect?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeListenableImplCopyWith<$Res>
    implements $HomeListenableCopyWith<$Res> {
  factory _$$HomeListenableImplCopyWith(_$HomeListenableImpl value,
          $Res Function(_$HomeListenableImpl) then) =
      __$$HomeListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableEffect? effect});
}

/// @nodoc
class __$$HomeListenableImplCopyWithImpl<$Res>
    extends _$HomeListenableCopyWithImpl<$Res, _$HomeListenableImpl>
    implements _$$HomeListenableImplCopyWith<$Res> {
  __$$HomeListenableImplCopyWithImpl(
      _$HomeListenableImpl _value, $Res Function(_$HomeListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_$HomeListenableImpl(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as TableEffect?,
    ));
  }
}

/// @nodoc

class _$HomeListenableImpl implements _HomeListenable {
  const _$HomeListenableImpl({this.effect});

  @override
  final TableEffect? effect;

  @override
  String toString() {
    return 'HomeListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeListenableImplCopyWith<_$HomeListenableImpl> get copyWith =>
      __$$HomeListenableImplCopyWithImpl<_$HomeListenableImpl>(
          this, _$identity);
}

abstract class _HomeListenable implements HomeListenable {
  const factory _HomeListenable({final TableEffect? effect}) =
      _$HomeListenableImpl;

  @override
  TableEffect? get effect;

  /// Create a copy of HomeListenable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeListenableImplCopyWith<_$HomeListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
