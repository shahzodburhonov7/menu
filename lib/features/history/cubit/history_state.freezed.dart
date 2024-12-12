// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryBuildable {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryBuildableCopyWith<HistoryBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryBuildableCopyWith<$Res> {
  factory $HistoryBuildableCopyWith(
          HistoryBuildable value, $Res Function(HistoryBuildable) then) =
      _$HistoryBuildableCopyWithImpl<$Res, HistoryBuildable>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$HistoryBuildableCopyWithImpl<$Res, $Val extends HistoryBuildable>
    implements $HistoryBuildableCopyWith<$Res> {
  _$HistoryBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryBuildableImplCopyWith<$Res>
    implements $HistoryBuildableCopyWith<$Res> {
  factory _$$HistoryBuildableImplCopyWith(_$HistoryBuildableImpl value,
          $Res Function(_$HistoryBuildableImpl) then) =
      __$$HistoryBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$HistoryBuildableImplCopyWithImpl<$Res>
    extends _$HistoryBuildableCopyWithImpl<$Res, _$HistoryBuildableImpl>
    implements _$$HistoryBuildableImplCopyWith<$Res> {
  __$$HistoryBuildableImplCopyWithImpl(_$HistoryBuildableImpl _value,
      $Res Function(_$HistoryBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$HistoryBuildableImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HistoryBuildableImpl implements _HistoryBuildable {
  const _$HistoryBuildableImpl({this.selectedIndex = 0});

  @override
  @JsonKey()
  final int selectedIndex;

  @override
  String toString() {
    return 'HistoryBuildable(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryBuildableImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryBuildableImplCopyWith<_$HistoryBuildableImpl> get copyWith =>
      __$$HistoryBuildableImplCopyWithImpl<_$HistoryBuildableImpl>(
          this, _$identity);
}

abstract class _HistoryBuildable implements HistoryBuildable {
  const factory _HistoryBuildable({final int selectedIndex}) =
      _$HistoryBuildableImpl;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$HistoryBuildableImplCopyWith<_$HistoryBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryListenable {}

/// @nodoc
abstract class $HistoryListenableCopyWith<$Res> {
  factory $HistoryListenableCopyWith(
          HistoryListenable value, $Res Function(HistoryListenable) then) =
      _$HistoryListenableCopyWithImpl<$Res, HistoryListenable>;
}

/// @nodoc
class _$HistoryListenableCopyWithImpl<$Res, $Val extends HistoryListenable>
    implements $HistoryListenableCopyWith<$Res> {
  _$HistoryListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HistoryListenableImplCopyWith<$Res> {
  factory _$$HistoryListenableImplCopyWith(_$HistoryListenableImpl value,
          $Res Function(_$HistoryListenableImpl) then) =
      __$$HistoryListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryListenableImplCopyWithImpl<$Res>
    extends _$HistoryListenableCopyWithImpl<$Res, _$HistoryListenableImpl>
    implements _$$HistoryListenableImplCopyWith<$Res> {
  __$$HistoryListenableImplCopyWithImpl(_$HistoryListenableImpl _value,
      $Res Function(_$HistoryListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryListenableImpl implements _HistoryListenable {
  const _$HistoryListenableImpl();

  @override
  String toString() {
    return 'HistoryListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _HistoryListenable implements HistoryListenable {
  const factory _HistoryListenable() = _$HistoryListenableImpl;
}
