// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashier_finish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashierFinishImpl _$$CashierFinishImplFromJson(Map<String, dynamic> json) =>
    _$CashierFinishImpl(
      sana:
          json['sana'] == null ? null : DateTime.parse(json['sana'] as String),
      orders_count: (json['orders_count'] as num?)?.toInt(),
      delivery: (json['delivery'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      cashier: json['cashier'] as String?,
    );

Map<String, dynamic> _$$CashierFinishImplToJson(_$CashierFinishImpl instance) =>
    <String, dynamic>{
      'sana': instance.sana?.toIso8601String(),
      'orders_count': instance.orders_count,
      'delivery': instance.delivery,
      'total_price': instance.total_price,
      'cashier': instance.cashier,
    };
