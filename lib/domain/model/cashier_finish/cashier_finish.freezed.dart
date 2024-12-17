// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_finish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CashierFinish _$CashierFinishFromJson(Map<String, dynamic> json) {
  return _CashierFinish.fromJson(json);
}

/// @nodoc
mixin _$CashierFinish {
  DateTime? get sana => throw _privateConstructorUsedError;
  int? get orders_count => throw _privateConstructorUsedError;
  int? get delivery => throw _privateConstructorUsedError;
  int? get total_price => throw _privateConstructorUsedError;
  String? get cashier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashierFinishCopyWith<CashierFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierFinishCopyWith<$Res> {
  factory $CashierFinishCopyWith(
          CashierFinish value, $Res Function(CashierFinish) then) =
      _$CashierFinishCopyWithImpl<$Res, CashierFinish>;
  @useResult
  $Res call(
      {DateTime? sana,
      int? orders_count,
      int? delivery,
      int? total_price,
      String? cashier});
}

/// @nodoc
class _$CashierFinishCopyWithImpl<$Res, $Val extends CashierFinish>
    implements $CashierFinishCopyWith<$Res> {
  _$CashierFinishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sana = freezed,
    Object? orders_count = freezed,
    Object? delivery = freezed,
    Object? total_price = freezed,
    Object? cashier = freezed,
  }) {
    return _then(_value.copyWith(
      sana: freezed == sana
          ? _value.sana
          : sana // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orders_count: freezed == orders_count
          ? _value.orders_count
          : orders_count // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cashier: freezed == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashierFinishImplCopyWith<$Res>
    implements $CashierFinishCopyWith<$Res> {
  factory _$$CashierFinishImplCopyWith(
          _$CashierFinishImpl value, $Res Function(_$CashierFinishImpl) then) =
      __$$CashierFinishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? sana,
      int? orders_count,
      int? delivery,
      int? total_price,
      String? cashier});
}

/// @nodoc
class __$$CashierFinishImplCopyWithImpl<$Res>
    extends _$CashierFinishCopyWithImpl<$Res, _$CashierFinishImpl>
    implements _$$CashierFinishImplCopyWith<$Res> {
  __$$CashierFinishImplCopyWithImpl(
      _$CashierFinishImpl _value, $Res Function(_$CashierFinishImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sana = freezed,
    Object? orders_count = freezed,
    Object? delivery = freezed,
    Object? total_price = freezed,
    Object? cashier = freezed,
  }) {
    return _then(_$CashierFinishImpl(
      sana: freezed == sana
          ? _value.sana
          : sana // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orders_count: freezed == orders_count
          ? _value.orders_count
          : orders_count // ignore: cast_nullable_to_non_nullable
              as int?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      total_price: freezed == total_price
          ? _value.total_price
          : total_price // ignore: cast_nullable_to_non_nullable
              as int?,
      cashier: freezed == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashierFinishImpl implements _CashierFinish {
  const _$CashierFinishImpl(
      {this.sana,
      this.orders_count,
      this.delivery,
      this.total_price,
      this.cashier});

  factory _$CashierFinishImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashierFinishImplFromJson(json);

  @override
  final DateTime? sana;
  @override
  final int? orders_count;
  @override
  final int? delivery;
  @override
  final int? total_price;
  @override
  final String? cashier;

  @override
  String toString() {
    return 'CashierFinish(sana: $sana, orders_count: $orders_count, delivery: $delivery, total_price: $total_price, cashier: $cashier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierFinishImpl &&
            (identical(other.sana, sana) || other.sana == sana) &&
            (identical(other.orders_count, orders_count) ||
                other.orders_count == orders_count) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.total_price, total_price) ||
                other.total_price == total_price) &&
            (identical(other.cashier, cashier) || other.cashier == cashier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sana, orders_count, delivery, total_price, cashier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierFinishImplCopyWith<_$CashierFinishImpl> get copyWith =>
      __$$CashierFinishImplCopyWithImpl<_$CashierFinishImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashierFinishImplToJson(
      this,
    );
  }
}

abstract class _CashierFinish implements CashierFinish {
  const factory _CashierFinish(
      {final DateTime? sana,
      final int? orders_count,
      final int? delivery,
      final int? total_price,
      final String? cashier}) = _$CashierFinishImpl;

  factory _CashierFinish.fromJson(Map<String, dynamic> json) =
      _$CashierFinishImpl.fromJson;

  @override
  DateTime? get sana;
  @override
  int? get orders_count;
  @override
  int? get delivery;
  @override
  int? get total_price;
  @override
  String? get cashier;
  @override
  @JsonKey(ignore: true)
  _$$CashierFinishImplCopyWith<_$CashierFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
