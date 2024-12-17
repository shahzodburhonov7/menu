// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCardImpl _$$ProductCardImplFromJson(Map<String, dynamic> json) =>
    _$ProductCardImpl(
      id: (json['id'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      cart_item: (json['cart_item'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductCardImplToJson(_$ProductCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_price': instance.total_price,
      'cart_item': instance.cart_item,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      product_name: json['product_name'] as String?,
      product_image: json['product_image'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
      unit_status: json['unit_status'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.product_name,
      'product_image': instance.product_image,
      'weight': instance.weight,
      'unit_status': instance.unit_status,
      'price': instance.price,
    };
