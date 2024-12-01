// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'done_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoneBuildable {
  bool get loading => throw _privateConstructorUsedError;
  List<OrdersDoneList> get orderDoneList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoneBuildableCopyWith<DoneBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoneBuildableCopyWith<$Res> {
  factory $DoneBuildableCopyWith(
          DoneBuildable value, $Res Function(DoneBuildable) then) =
      _$DoneBuildableCopyWithImpl<$Res, DoneBuildable>;
  @useResult
  $Res call({bool loading, List<OrdersDoneList> orderDoneList});
}

/// @nodoc
class _$DoneBuildableCopyWithImpl<$Res, $Val extends DoneBuildable>
    implements $DoneBuildableCopyWith<$Res> {
  _$DoneBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? orderDoneList = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDoneList: null == orderDoneList
          ? _value.orderDoneList
          : orderDoneList // ignore: cast_nullable_to_non_nullable
              as List<OrdersDoneList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoneBuildableImplCopyWith<$Res>
    implements $DoneBuildableCopyWith<$Res> {
  factory _$$DoneBuildableImplCopyWith(
          _$DoneBuildableImpl value, $Res Function(_$DoneBuildableImpl) then) =
      __$$DoneBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<OrdersDoneList> orderDoneList});
}

/// @nodoc
class __$$DoneBuildableImplCopyWithImpl<$Res>
    extends _$DoneBuildableCopyWithImpl<$Res, _$DoneBuildableImpl>
    implements _$$DoneBuildableImplCopyWith<$Res> {
  __$$DoneBuildableImplCopyWithImpl(
      _$DoneBuildableImpl _value, $Res Function(_$DoneBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? orderDoneList = null,
  }) {
    return _then(_$DoneBuildableImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDoneList: null == orderDoneList
          ? _value._orderDoneList
          : orderDoneList // ignore: cast_nullable_to_non_nullable
              as List<OrdersDoneList>,
    ));
  }
}

/// @nodoc

class _$DoneBuildableImpl implements _DoneBuildable {
  const _$DoneBuildableImpl(
      {this.loading = false,
      final List<OrdersDoneList> orderDoneList = const []})
      : _orderDoneList = orderDoneList;

  @override
  @JsonKey()
  final bool loading;
  final List<OrdersDoneList> _orderDoneList;
  @override
  @JsonKey()
  List<OrdersDoneList> get orderDoneList {
    if (_orderDoneList is EqualUnmodifiableListView) return _orderDoneList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDoneList);
  }

  @override
  String toString() {
    return 'DoneBuildable(loading: $loading, orderDoneList: $orderDoneList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneBuildableImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._orderDoneList, _orderDoneList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_orderDoneList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneBuildableImplCopyWith<_$DoneBuildableImpl> get copyWith =>
      __$$DoneBuildableImplCopyWithImpl<_$DoneBuildableImpl>(this, _$identity);
}

abstract class _DoneBuildable implements DoneBuildable {
  const factory _DoneBuildable(
      {final bool loading,
      final List<OrdersDoneList> orderDoneList}) = _$DoneBuildableImpl;

  @override
  bool get loading;
  @override
  List<OrdersDoneList> get orderDoneList;
  @override
  @JsonKey(ignore: true)
  _$$DoneBuildableImplCopyWith<_$DoneBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoneListenable {}

/// @nodoc
abstract class $DoneListenableCopyWith<$Res> {
  factory $DoneListenableCopyWith(
          DoneListenable value, $Res Function(DoneListenable) then) =
      _$DoneListenableCopyWithImpl<$Res, DoneListenable>;
}

/// @nodoc
class _$DoneListenableCopyWithImpl<$Res, $Val extends DoneListenable>
    implements $DoneListenableCopyWith<$Res> {
  _$DoneListenableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DoneListenableImplCopyWith<$Res> {
  factory _$$DoneListenableImplCopyWith(_$DoneListenableImpl value,
          $Res Function(_$DoneListenableImpl) then) =
      __$$DoneListenableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneListenableImplCopyWithImpl<$Res>
    extends _$DoneListenableCopyWithImpl<$Res, _$DoneListenableImpl>
    implements _$$DoneListenableImplCopyWith<$Res> {
  __$$DoneListenableImplCopyWithImpl(
      _$DoneListenableImpl _value, $Res Function(_$DoneListenableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneListenableImpl implements _DoneListenable {
  const _$DoneListenableImpl();

  @override
  String toString() {
    return 'DoneListenable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneListenableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DoneListenable implements DoneListenable {
  const factory _DoneListenable() = _$DoneListenableImpl;
}
