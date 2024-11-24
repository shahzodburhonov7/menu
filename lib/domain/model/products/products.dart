
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products.freezed.dart';
part 'products.g.dart';

List<FoodProducts> foodProductsFromJson(String str) => List<FoodProducts>.from(json.decode(str).map((x) => FoodProducts.fromJson(x)));

String foodProductsToJson(List<FoodProducts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class FoodProducts with _$FoodProducts {
  const factory FoodProducts({
    int? id,
    dynamic name_uz,
    dynamic name_ru,
    dynamic name_en,
    String? image,
    int? price,
  }) = _FoodProducts;

  factory FoodProducts.fromJson(Map<String, dynamic> json) => _$FoodProductsFromJson(json);
}

