// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'done_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoneListImpl _$$DoneListImplFromJson(Map<String, dynamic> json) =>
    _$DoneListImpl(
      id: (json['id'] as num?)?.toInt(),
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      total_price: (json['total_price'] as num?)?.toInt(),
      user_type: json['user_type'] as String?,
      user_full_name: json['user_full_name'] as String?,
    );

Map<String, dynamic> _$$DoneListImplToJson(_$DoneListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'total_price': instance.total_price,
      'user_type': instance.user_type,
      'user_full_name': instance.user_full_name,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt(),
      table_number: (json['table_number'] as num?)?.toInt(),
      cart_items: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_number': instance.table_number,
      'cart_items': instance.cart_items,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      food: json['food'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food': instance.food,
      'quantity': instance.quantity,
    };
