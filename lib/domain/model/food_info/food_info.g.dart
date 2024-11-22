// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodInfoImpl _$$FoodInfoImplFromJson(Map<String, dynamic> json) =>
    _$FoodInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
      food_info_uz: json['food_info_uz'] as String?,
      food_info_ru: json['food_info_ru'] as String?,
      food_info_en: json['food_info_en'] as String?,
    );

Map<String, dynamic> _$$FoodInfoImplToJson(_$FoodInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'food_info_uz': instance.food_info_uz,
      'food_info_ru': instance.food_info_ru,
      'food_info_en': instance.food_info_en,
    };
