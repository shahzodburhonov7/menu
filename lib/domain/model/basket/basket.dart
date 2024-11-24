
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'basket.freezed.dart';
part 'basket.g.dart';

List<BasketCategory> basketCategoryFromJson(String str) => List<BasketCategory>.from(json.decode(str).map((x) => BasketCategory.fromJson(x)));

String basketCategoryToJson(List<BasketCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class BasketCategory with _$BasketCategory {
  const factory BasketCategory({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? image,
  }) = _BasketCategory;

  factory BasketCategory.fromJson(Map<String, dynamic> json) => _$BasketCategoryFromJson(json);
}
