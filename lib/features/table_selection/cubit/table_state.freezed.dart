// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableBuildable {
  List<dynamic> get getTableList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  int get table => throw _privateConstructorUsedError;
  int get tableId => throw _privateConstructorUsedError;
  bool get postTable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableBuildableCopyWith<TableBuildable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableBuildableCopyWith<$Res> {
  factory $TableBuildableCopyWith(
          TableBuildable value, $Res Function(TableBuildable) then) =
      _$TableBuildableCopyWithImpl<$Res, TableBuildable>;
  @useResult
  $Res call(
      {List<dynamic> getTableList,
      bool loading,
      int table,
      int tableId,
      bool postTable});
}

/// @nodoc
class _$TableBuildableCopyWithImpl<$Res, $Val extends TableBuildable>
    implements $TableBuildableCopyWith<$Res> {
  _$TableBuildableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTableList = null,
    Object? loading = null,
    Object? table = null,
    Object? tableId = null,
    Object? postTable = null,
  }) {
    return _then(_value.copyWith(
      getTableList: null == getTableList
          ? _value.getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int,
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int,
      postTable: null == postTable
          ? _value.postTable
          : postTable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableBuildableImplCopyWith<$Res>
    implements $TableBuildableCopyWith<$Res> {
  factory _$$TableBuildableImplCopyWith(_$TableBuildableImpl value,
          $Res Function(_$TableBuildableImpl) then) =
      __$$TableBuildableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> getTableList,
      bool loading,
      int table,
      int tableId,
      bool postTable});
}

/// @nodoc
class __$$TableBuildableImplCopyWithImpl<$Res>
    extends _$TableBuildableCopyWithImpl<$Res, _$TableBuildableImpl>
    implements _$$TableBuildableImplCopyWith<$Res> {
  __$$TableBuildableImplCopyWithImpl(
      _$TableBuildableImpl _value, $Res Function(_$TableBuildableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getTableList = null,
    Object? loading = null,
    Object? table = null,
    Object? tableId = null,
    Object? postTable = null,
  }) {
    return _then(_$TableBuildableImpl(
      getTableList: null == getTableList
          ? _value._getTableList
          : getTableList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as int,
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int,
      postTable: null == postTable
          ? _value.postTable
          : postTable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TableBuildableImpl implements _TableBuildable {
  const _$TableBuildableImpl(
      {final List<dynamic> getTableList = const [],
      this.loading = false,
      this.table = 0,
      this.tableId = 0,
      this.postTable = false})
      : _getTableList = getTableList;

  final List<dynamic> _getTableList;
  @override
  @JsonKey()
  List<dynamic> get getTableList {
    if (_getTableList is EqualUnmodifiableListView) return _getTableList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_getTableList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final int table;
  @override
  @JsonKey()
  final int tableId;
  @override
  @JsonKey()
  final bool postTable;

  @override
  String toString() {
    return 'TableBuildable(getTableList: $getTableList, loading: $loading, table: $table, tableId: $tableId, postTable: $postTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableBuildableImpl &&
            const DeepCollectionEquality()
                .equals(other._getTableList, _getTableList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.postTable, postTable) ||
                other.postTable == postTable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_getTableList),
      loading,
      table,
      tableId,
      postTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableBuildableImplCopyWith<_$TableBuildableImpl> get copyWith =>
      __$$TableBuildableImplCopyWithImpl<_$TableBuildableImpl>(
          this, _$identity);
}

abstract class _TableBuildable implements TableBuildable {
  const factory _TableBuildable(
      {final List<dynamic> getTableList,
      final bool loading,
      final int table,
      final int tableId,
      final bool postTable}) = _$TableBuildableImpl;

  @override
  List<dynamic> get getTableList;
  @override
  bool get loading;
  @override
  int get table;
  @override
  int get tableId;
  @override
  bool get postTable;
  @override
  @JsonKey(ignore: true)
  _$$TableBuildableImplCopyWith<_$TableBuildableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TableListenable {
  TableEffect? get effect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableListenableCopyWith<TableListenable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableListenableCopyWith<$Res> {
  factory $TableListenableCopyWith(
          TableListenable value, $Res Function(TableListenable) then) =
      _$TableListenableCopyWithImpl<$Res, TableListenable>;
  @useResult
  $Res call({TableEffect? effect});
}

/// @nodoc
class _$TableListenableCopyWithImpl<$Res, $Val extends TableListenable>
    implements $TableListenableCopyWith<$Res> {
  _$TableListenableCopyWithImpl(this._value, this._then);

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
              as TableEffect?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableListenableImplCopyWith<$Res>
    implements $TableListenableCopyWith<$Res> {
  factory _$$TableListenableImplCopyWith(_$TableListenableImpl value,
          $Res Function(_$TableListenableImpl) then) =
      __$$TableListenableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableEffect? effect});
}

/// @nodoc
class __$$TableListenableImplCopyWithImpl<$Res>
    extends _$TableListenableCopyWithImpl<$Res, _$TableListenableImpl>
    implements _$$TableListenableImplCopyWith<$Res> {
  __$$TableListenableImplCopyWithImpl(
      _$TableListenableImpl _value, $Res Function(_$TableListenableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? effect = freezed,
  }) {
    return _then(_$TableListenableImpl(
      effect: freezed == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as TableEffect?,
    ));
  }
}

/// @nodoc

class _$TableListenableImpl implements _TableListenable {
  const _$TableListenableImpl({this.effect});

  @override
  final TableEffect? effect;

  @override
  String toString() {
    return 'TableListenable(effect: $effect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableListenableImpl &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableListenableImplCopyWith<_$TableListenableImpl> get copyWith =>
      __$$TableListenableImplCopyWithImpl<_$TableListenableImpl>(
          this, _$identity);
}

abstract class _TableListenable implements TableListenable {
  const factory _TableListenable({final TableEffect? effect}) =
      _$TableListenableImpl;

  @override
  TableEffect? get effect;
  @override
  @JsonKey(ignore: true)
  _$$TableListenableImplCopyWith<_$TableListenableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
