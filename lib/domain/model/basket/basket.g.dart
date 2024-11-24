// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketCategoryImpl _$$BasketCategoryImplFromJson(Map<String, dynamic> json) =>
    _$BasketCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name_uz: json['name_uz'] as String?,
      name_ru: json['name_ru'] as String?,
      name_en: json['name_en'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$BasketCategoryImplToJson(
        _$BasketCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_uz': instance.name_uz,
      'name_ru': instance.name_ru,
      'name_en': instance.name_en,
      'image': instance.image,
    };
