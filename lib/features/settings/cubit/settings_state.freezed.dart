// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsBuildable {
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isToggled => throw _privateConstructorUsedError;
  String get selectedLanguage => throw _privateConstructorUsedError;

  /// Create a copy of SettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsBuildableCopyWith<SettingsBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsBuildableCopyWith<$Res> {
  factory $SettingsBuildableCopyWith(
          SettingsBuildable value, $Res Function(SettingsBuildable) then) =
      _$SettingsBuildableCopyWithImpl<$Res, SettingsBuildable>;
  @useResult
  $Res call({bool isExpanded, bool isToggled, String selectedLanguage});
}

/// @nodoc
class _$SettingsBuildableCopyWithImpl<$Res, $Val extends SettingsBuildable>
    implements $SettingsBuildableCopyWith<$Res> {
  _$SettingsBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isToggled = null,
    Object? selectedLanguage = null,
  }) {
    return _then(_value.copyWith(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isToggled: null == isToggled
          ? _value.isToggled
          : isToggled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsBuildableImplCopyWith<$Res>
    implements $SettingsBuildableCopyWith<$Res> {
  factory _$$SettingsBuildableImplCopyWith(_$SettingsBuildableImpl value,
          $Res Function(_$SettingsBuildableImpl) then) =
      __$$SettingsBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExpanded, bool isToggled, String selectedLanguage});
}

/// @nodoc
class __$$SettingsBuildableImplCopyWithImpl<$Res>
    extends _$SettingsBuildableCopyWithImpl<$Res, _$SettingsBuildableImpl>
    implements _$$SettingsBuildableImplCopyWith<$Res> {
  __$$SettingsBuildableImplCopyWithImpl(_$SettingsBuildableImpl _value,
      $Res Function(_$SettingsBuildableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isToggled = null,
    Object? selectedLanguage = null,
  }) {
    return _then(_$SettingsBuildableImpl(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isToggled: null == isToggled
          ? _value.isToggled
          : isToggled // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsBuildableImpl implements _SettingsBuildable {
  const _$SettingsBuildableImpl(
      {this.isExpanded = false,
      this.isToggled = false,
      this.selectedLanguage = ""});

  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final bool isToggled;
  @override
  @JsonKey()
  final String selectedLanguage;

  @override
  String toString() {
    return 'SettingsBuildable(isExpanded: $isExpanded, isToggled: $isToggled, selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsBuildableImpl &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isToggled, isToggled) ||
                other.isToggled == isToggled) &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isExpanded, isToggled, selectedLanguage);

  /// Create a copy of SettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsBuildableImplCopyWith<_$SettingsBuildableImpl> get copyWith =>
      __$$SettingsBuildableImplCopyWithImpl<_$SettingsBuildableImpl>(
          this, _$identity);
}

abstract class _SettingsBuildable implements SettingsBuildable {
  const factory _SettingsBuildable(
      {final bool isExpanded,
      final bool isToggled,
      final String selectedLanguage}) = _$SettingsBuildableImpl;

  @override
  bool get isExpanded;
  @override
  bool get isToggled;
  @override
  String get selectedLanguage;

  /// Create a copy of SettingsBuildable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsBuildableImplCopyWith<_$SettingsBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsListenable {}

/// @nodoc
abstract class $SettingsListenableCopyWith<$Res> {
  factory $SettingsListenableCopyWith(
          SettingsListenable value, $Res Function(SettingsListenable) then) =
      _$SettingsListenableCopyWithImpl<$Res, SettingsListenable>;
}

/// @nodoc
class _$SettingsListenableCopyWithImpl<$Res, $Val extends SettingsListenable>
    implements $SettingsListenableCopyWith<$Res> {
  _$SettingsListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsListenableImplCopyWith<$Res> {
  factory _$$SettingsListenableImplCopyWith(_$SettingsListenableImpl value,
          $Res Function(_$SettingsListenableImpl) then) =
      __$$SettingsListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsListenableImplCopyWithImpl<$Res>
    extends _$SettingsListenableCopyWithImpl<$Res, _$SettingsListenableImpl>
    implements _$$SettingsListenableImplCopyWith<$Res> {
  __$$SettingsListenableImplCopyWithImpl(_$SettingsListenableImpl _value,
      $Res Function(_$SettingsListenableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsListenable
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsListenableImpl implements _SettingsListenable {
  const _$SettingsListenableImpl();

  @override
  String toString() {
    return 'SettingsListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SettingsListenable implements SettingsListenable {
  const factory _SettingsListenable() = _$SettingsListenableImpl;
}
