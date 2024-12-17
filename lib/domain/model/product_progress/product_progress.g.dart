// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductProgressImpl _$$ProductProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductProgressImpl(
      id: (json['id'] as num?)?.toInt(),
      cart: json['cart'] == null
          ? null
          : Cart.fromJson(json['cart'] as Map<String, dynamic>),
      status: json['status'] as String?,
      total_price: (json['total_price'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      time: json['time'] as String?,
      full_name: json['full_name'] as String?,
    );

Map<String, dynamic> _$$ProductProgressImplToJson(
        _$ProductProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart': instance.cart,
      'status': instance.status,
      'total_price': instance.total_price,
      'date': instance.date?.toIso8601String(),
      'time': instance.time,
      'full_name': instance.full_name,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: (json['id'] as num?)?.toInt(),
      total_price: (json['total_price'] as num?)?.toInt(),
      cart_item: (json['cart_item'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
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
