
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_progress.freezed.dart';
part 'product_progress.g.dart';

List<ProductProgress> productProgressFromJson(String str) => List<ProductProgress>.from(json.decode(str).map((x) => ProductProgress.fromJson(x)));

String productProgressToJson(List<ProductProgress> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ProductProgress with _$ProductProgress {
  const factory ProductProgress({
    int? id,
    Cart? cart,
    String? status,
    int? total_price,
    DateTime? date,
    String? time,
    String? full_name,
  }) = _ProductProgress;

  factory ProductProgress.fromJson(Map<String, dynamic> json) => _$ProductProgressFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    int? id,
    int? total_price,
    List<CartItem>? cart_item,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
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
