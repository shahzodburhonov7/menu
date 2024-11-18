// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileBuildable {
  Profile? get profile => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileBuildableCopyWith<ProfileBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileBuildableCopyWith<$Res> {
  factory $ProfileBuildableCopyWith(
          ProfileBuildable value, $Res Function(ProfileBuildable) then) =
      _$ProfileBuildableCopyWithImpl<$Res, ProfileBuildable>;
  @useResult
  $Res call({Profile? profile, bool loading});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileBuildableCopyWithImpl<$Res, $Val extends ProfileBuildable>
    implements $ProfileBuildableCopyWith<$Res> {
  _$ProfileBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileBuildableImplCopyWith<$Res>
    implements $ProfileBuildableCopyWith<$Res> {
  factory _$$ProfileBuildableImplCopyWith(_$ProfileBuildableImpl value,
          $Res Function(_$ProfileBuildableImpl) then) =
      __$$ProfileBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Profile? profile, bool loading});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$ProfileBuildableImplCopyWithImpl<$Res>
    extends _$ProfileBuildableCopyWithImpl<$Res, _$ProfileBuildableImpl>
    implements _$$ProfileBuildableImplCopyWith<$Res> {
  __$$ProfileBuildableImplCopyWithImpl(_$ProfileBuildableImpl _value,
      $Res Function(_$ProfileBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = freezed,
    Object? loading = null,
  }) {
    return _then(_$ProfileBuildableImpl(
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileBuildableImpl implements _ProfileBuildable {
  const _$ProfileBuildableImpl({this.profile, this.loading = false});

  @override
  final Profile? profile;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ProfileBuildable(profile: $profile, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileBuildableImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, loading);

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileBuildableImplCopyWith<_$ProfileBuildableImpl> get copyWith =>
      __$$ProfileBuildableImplCopyWithImpl<_$ProfileBuildableImpl>(
          this, _$identity);
}

abstract class _ProfileBuildable implements ProfileBuildable {
  const factory _ProfileBuildable(
      {final Profile? profile, final bool loading}) = _$ProfileBuildableImpl;

  @override
  Profile? get profile;
  @override
  bool get loading;

  /// Create a copy of ProfileBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileBuildableImplCopyWith<_$ProfileBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileListenable {}

/// @nodoc
abstract class $ProfileListenableCopyWith<$Res> {
  factory $ProfileListenableCopyWith(
          ProfileListenable value, $Res Function(ProfileListenable) then) =
      _$ProfileListenableCopyWithImpl<$Res, ProfileListenable>;
}

/// @nodoc
class _$ProfileListenableCopyWithImpl<$Res, $Val extends ProfileListenable>
    implements $ProfileListenableCopyWith<$Res> {
  _$ProfileListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileListenableImplCopyWith<$Res> {
  factory _$$ProfileListenableImplCopyWith(_$ProfileListenableImpl value,
          $Res Function(_$ProfileListenableImpl) then) =
      __$$ProfileListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileListenableImplCopyWithImpl<$Res>
    extends _$ProfileListenableCopyWithImpl<$Res, _$ProfileListenableImpl>
    implements _$$ProfileListenableImplCopyWith<$Res> {
  __$$ProfileListenableImplCopyWithImpl(_$ProfileListenableImpl _value,
      $Res Function(_$ProfileListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileListenableImpl implements _ProfileListenable {
  const _$ProfileListenableImpl();

  @override
  String toString() {
    return 'ProfileListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ProfileListenable implements ProfileListenable {
  const factory _ProfileListenable() = _$ProfileListenableImpl;
}
