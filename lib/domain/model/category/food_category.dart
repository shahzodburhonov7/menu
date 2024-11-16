import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'food_category.freezed.dart';
part 'food_category.g.dart';

List<FoodCategory> foodCategoryFromJson(String str) => List<FoodCategory>.from(json.decode(str).map((x) => FoodCategory.fromJson(x)));

String foodCategoryToJson(List<FoodCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FoodCategory with _$FoodCategory {
  const factory FoodCategory({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? image,
  }) = _FoodCategory;

  factory FoodCategory.fromJson(Map<String, dynamic> json) => _$FoodCategoryFromJson(json);
}
