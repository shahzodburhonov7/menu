// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodProductsImpl _$$FoodProductsImplFromJson(Map<String, dynamic> json) =>
    _$FoodProductsImpl(
      id: (json['id'] as num?)?.toInt(),
      name_uz: json['name_uz'],
      name_ru: json['name_ru'],
      name_en: json['name_en'],
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FoodProductsImplToJson(_$FoodProductsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.name_uz,
      'name_ru': instance.name_ru,
      'name_en': instance.name_en,
      'image': instance.image,
      'price': instance.price,
    };
