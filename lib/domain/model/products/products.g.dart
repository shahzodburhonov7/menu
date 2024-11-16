// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodProductsImpl _$$FoodProductsImplFromJson(Map<String, dynamic> json) =>
    _$FoodProductsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FoodProductsImplToJson(_$FoodProductsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
    };
