// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBuildable {
  bool get loading => throw _privateConstructorUsedError;
  String get loginError => throw _privateConstructorUsedError;
  String get passwordError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginBuildableCopyWith<LoginBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBuildableCopyWith<$Res> {
  factory $LoginBuildableCopyWith(
          LoginBuildable value, $Res Function(LoginBuildable) then) =
      _$LoginBuildableCopyWithImpl<$Res, LoginBuildable>;
  @useResult
  $Res call({bool loading, String loginError, String passwordError});
}

/// @nodoc
class _$LoginBuildableCopyWithImpl<$Res, $Val extends LoginBuildable>
    implements $LoginBuildableCopyWith<$Res> {
  _$LoginBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loginError = null,
    Object? passwordError = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginError: null == loginError
          ? _value.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginBuildableImplCopyWith<$Res>
    implements $LoginBuildableCopyWith<$Res> {
  factory _$$LoginBuildableImplCopyWith(_$LoginBuildableImpl value,
          $Res Function(_$LoginBuildableImpl) then) =
      __$$LoginBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String loginError, String passwordError});
}

/// @nodoc
class __$$LoginBuildableImplCopyWithImpl<$Res>
    extends _$LoginBuildableCopyWithImpl<$Res, _$LoginBuildableImpl>
    implements _$$LoginBuildableImplCopyWith<$Res> {
  __$$LoginBuildableImplCopyWithImpl(
      _$LoginBuildableImpl _value, $Res Function(_$LoginBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loginError = null,
    Object? passwordError = null,
  }) {
    return _then(_$LoginBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginError: null == loginError
          ? _value.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as String,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginBuildableImpl implements _LoginBuildable {
  _$LoginBuildableImpl(
      {this.loading = false, this.loginError = '', this.passwordError = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String loginError;
  @override
  @JsonKey()
  final String passwordError;

  @override
  String toString() {
    return 'LoginBuildable(loading: $loading, loginError: $loginError, passwordError: $passwordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loginError, loginError) ||
                other.loginError == loginError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, loginError, passwordError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBuildableImplCopyWith<_$LoginBuildableImpl> get copyWith =>
      __$$LoginBuildableImplCopyWithImpl<_$LoginBuildableImpl>(
          this, _$identity);
}

abstract class _LoginBuildable implements LoginBuildable {
  factory _LoginBuildable(
      {final bool loading,
      final String loginError,
      final String passwordError}) = _$LoginBuildableImpl;

  @override
  bool get loading;
  @override
  String get loginError;
  @override
  String get passwordError;
  @override
  @JsonKey(ignore: true)
  _$$LoginBuildableImplCopyWith<_$LoginBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginListenable {
  LoginEffect? get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginListenableCopyWith<LoginListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginListenableCopyWith<$Res> {
  factory $LoginListenableCopyWith(
          LoginListenable value, $Res Function(LoginListenable) then) =
      _$LoginListenableCopyWithImpl<$Res, LoginListenable>;
  @useResult
  $Res call({LoginEffect? effect});
}

/// @nodoc
class _$LoginListenableCopyWithImpl<$Res, $Val extends LoginListenable>
    implements $LoginListenableCopyWith<$Res> {
  _$LoginListenableCopyWithImpl(this._value, this._then);

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
              as LoginEffect?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginListenableImplCopyWith<$Res>
    implements $LoginListenableCopyWith<$Res> {
  factory _$$LoginListenableImplCopyWith(_$LoginListenableImpl value,
          $Res Function(_$LoginListenableImpl) then) =
      __$$LoginListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginEffect? effect});
}

/// @nodoc
class __$$LoginListenableImplCopyWithImpl<$Res>
    extends _$LoginListenableCopyWithImpl<$Res, _$LoginListenableImpl>
    implements _$$LoginListenableImplCopyWith<$Res> {
  __$$LoginListenableImplCopyWithImpl(
      _$LoginListenableImpl _value, $Res Function(_$LoginListenableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_$LoginListenableImpl(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as LoginEffect?,
    ));
  }
}

/// @nodoc

class _$LoginListenableImpl implements _LoginListenable {
  const _$LoginListenableImpl({this.effect});

  @override
  final LoginEffect? effect;

  @override
  String toString() {
    return 'LoginListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginListenableImplCopyWith<_$LoginListenableImpl> get copyWith =>
      __$$LoginListenableImplCopyWithImpl<_$LoginListenableImpl>(
          this, _$identity);
}

abstract class _LoginListenable implements LoginListenable {
  const factory _LoginListenable({final LoginEffect? effect}) =
      _$LoginListenableImpl;

  @override
  LoginEffect? get effect;
  @override
  @JsonKey(ignore: true)
  _$$LoginListenableImplCopyWith<_$LoginListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
