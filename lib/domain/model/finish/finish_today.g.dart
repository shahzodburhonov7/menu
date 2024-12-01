// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinishTodayImpl _$$FinishTodayImplFromJson(Map<String, dynamic> json) =>
    _$FinishTodayImpl(
      sana:
          json['sana'] == null ? null : DateTime.parse(json['sana'] as String),
      orders: (json['orders'] as num?)?.toInt(),
      percentage_for: (json['percentage_for'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      ofitsant_kpi: (json['ofitsant_kpi'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FinishTodayImplToJson(_$FinishTodayImpl instance) =>
    <String, dynamic>{
      'sana': instance.sana?.toIso8601String(),
      'orders': instance.orders,
      'percentage_for': instance.percentage_for,
      'total_price': instance.total_price,
      'ofitsant_kpi': instance.ofitsant_kpi,
    };
