// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_done_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDoneListImpl _$$OrdersDoneListImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDoneListImpl(
      id: (json['id'] as num?)?.toInt(),
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      status: json['status'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      total_price: json['total_price'] as String?,
    );

Map<String, dynamic> _$$OrdersDoneListImplToJson(
        _$OrdersDoneListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'total_price': instance.total_price,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt(),
      user: (json['user'] as num?)?.toInt(),
      table: (json['table'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      cart_items: (json['cart_items'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
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
