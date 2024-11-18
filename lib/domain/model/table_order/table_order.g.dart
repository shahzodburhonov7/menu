// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableOrderImpl _$$TableOrderImplFromJson(Map<String, dynamic> json) =>
    _$TableOrderImpl(
      id: (json['id'] as num?)?.toInt(),
      user: (json['user'] as num?)?.toInt(),
      table: (json['table'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      cart_items: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TableOrderImplToJson(_$TableOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'table': instance.table,
      'total_price': instance.total_price,
      'cart_items': instance.cart_items,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      food: (json['food'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as String?,
      food_name: json['food_name'] as String?,
      food_image: json['food_image'] as String?,
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'food': instance.food,
      'quantity': instance.quantity,
      'price': instance.price,
      'food_name': instance.food_name,
      'food_image': instance.food_image,
    };
