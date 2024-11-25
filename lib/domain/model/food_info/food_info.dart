
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'food_info.freezed.dart';
part 'food_info.g.dart';

FoodInfo foodInfoFromJson(String str) => FoodInfo.fromJson(json.decode(str));

String foodInfoToJson(FoodInfo data) => json.encode(data.toJson());

@freezed
class FoodInfo with _$FoodInfo {
  const factory FoodInfo({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? image,
    int? price,
    String? food_info_uz,
    String? food_info_ru,
    String? food_info_en,
  }) = _FoodInfo;

  factory FoodInfo.fromJson(Map<String, dynamic> json) => _$FoodInfoFromJson(json);
}
