// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish_day_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinishDayBuildable {
  bool get loading => throw _privateConstructorUsedError;
  FinishToday? get finishToday => throw _privateConstructorUsedError;

  /// Create a copy of FinishDayBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinishDayBuildableCopyWith<FinishDayBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishDayBuildableCopyWith<$Res> {
  factory $FinishDayBuildableCopyWith(
          FinishDayBuildable value, $Res Function(FinishDayBuildable) then) =
      _$FinishDayBuildableCopyWithImpl<$Res, FinishDayBuildable>;
  @useResult
  $Res call({bool loading, FinishToday? finishToday});

  $FinishTodayCopyWith<$Res>? get finishToday;
}

/// @nodoc
class _$FinishDayBuildableCopyWithImpl<$Res, $Val extends FinishDayBuildable>
    implements $FinishDayBuildableCopyWith<$Res> {
  _$FinishDayBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishDayBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? finishToday = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finishToday: freezed == finishToday
          ? _value.finishToday
          : finishToday // ignore: cast_nullable_to_non_nullable
              as FinishToday?,
    ) as $Val);
  }

  /// Create a copy of FinishDayBuildable
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
}

/// @nodoc
abstract class _$$FinishDayBuildableImplCopyWith<$Res>
    implements $FinishDayBuildableCopyWith<$Res> {
  factory _$$FinishDayBuildableImplCopyWith(_$FinishDayBuildableImpl value,
          $Res Function(_$FinishDayBuildableImpl) then) =
      __$$FinishDayBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, FinishToday? finishToday});

  @override
  $FinishTodayCopyWith<$Res>? get finishToday;
}

/// @nodoc
class __$$FinishDayBuildableImplCopyWithImpl<$Res>
    extends _$FinishDayBuildableCopyWithImpl<$Res, _$FinishDayBuildableImpl>
    implements _$$FinishDayBuildableImplCopyWith<$Res> {
  __$$FinishDayBuildableImplCopyWithImpl(_$FinishDayBuildableImpl _value,
      $Res Function(_$FinishDayBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishDayBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? finishToday = freezed,
  }) {
    return _then(_$FinishDayBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      finishToday: freezed == finishToday
          ? _value.finishToday
          : finishToday // ignore: cast_nullable_to_non_nullable
              as FinishToday?,
    ));
  }
}

/// @nodoc

class _$FinishDayBuildableImpl implements _FinishDayBuildable {
  const _$FinishDayBuildableImpl({this.loading = false, this.finishToday});

  @override
  @JsonKey()
  final bool loading;
  @override
  final FinishToday? finishToday;

  @override
  String toString() {
    return 'FinishDayBuildable(loading: $loading, finishToday: $finishToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishDayBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.finishToday, finishToday) ||
                other.finishToday == finishToday));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, finishToday);

  /// Create a copy of FinishDayBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishDayBuildableImplCopyWith<_$FinishDayBuildableImpl> get copyWith =>
      __$$FinishDayBuildableImplCopyWithImpl<_$FinishDayBuildableImpl>(
          this, _$identity);
}

abstract class _FinishDayBuildable implements FinishDayBuildable {
  const factory _FinishDayBuildable(
      {final bool loading,
      final FinishToday? finishToday}) = _$FinishDayBuildableImpl;

  @override
  bool get loading;
  @override
  FinishToday? get finishToday;

  /// Create a copy of FinishDayBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishDayBuildableImplCopyWith<_$FinishDayBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinishDayListenable {}

/// @nodoc
abstract class $FinishDayListenableCopyWith<$Res> {
  factory $FinishDayListenableCopyWith(
          FinishDayListenable value, $Res Function(FinishDayListenable) then) =
      _$FinishDayListenableCopyWithImpl<$Res, FinishDayListenable>;
}

/// @nodoc
class _$FinishDayListenableCopyWithImpl<$Res, $Val extends FinishDayListenable>
    implements $FinishDayListenableCopyWith<$Res> {
  _$FinishDayListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinishDayListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FinishDayListenableImplCopyWith<$Res> {
  factory _$$FinishDayListenableImplCopyWith(_$FinishDayListenableImpl value,
          $Res Function(_$FinishDayListenableImpl) then) =
      __$$FinishDayListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishDayListenableImplCopyWithImpl<$Res>
    extends _$FinishDayListenableCopyWithImpl<$Res, _$FinishDayListenableImpl>
    implements _$$FinishDayListenableImplCopyWith<$Res> {
  __$$FinishDayListenableImplCopyWithImpl(_$FinishDayListenableImpl _value,
      $Res Function(_$FinishDayListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinishDayListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FinishDayListenableImpl implements _FinishDayListenable {
  const _$FinishDayListenableImpl();

  @override
  String toString() {
    return 'FinishDayListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishDayListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FinishDayListenable implements FinishDayListenable {
  const factory _FinishDayListenable() = _$FinishDayListenableImpl;
}
