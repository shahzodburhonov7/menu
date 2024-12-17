// To parse this JSON data, do
//
//     final productCard = productCardFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_card.freezed.dart';
part 'product_card.g.dart';

ProductCard productCardFromJson(String str) => ProductCard.fromJson(json.decode(str));

String productCardToJson(ProductCard data) => json.encode(data.toJson());

@freezed
class ProductCard with _$ProductCard {
  const factory ProductCard({
    int? id,
    int? total_price,
    List<CartItem>? cart_item,
  }) = _ProductCard;

  factory ProductCard.fromJson(Map<String, dynamic> json) => _$ProductCardFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    int? id,
    String? product_name,
    String? product_image,
    int? weight,
    String? unit_status,
    int? price,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}
