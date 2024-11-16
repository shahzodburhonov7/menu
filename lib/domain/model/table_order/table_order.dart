import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'table_order.freezed.dart';
part 'table_order.g.dart';

TableOrder tableOrderFromJson(String str) => TableOrder.fromJson(json.decode(str));

String tableOrderToJson(TableOrder data) => json.encode(data.toJson());

@freezed
class TableOrder with _$TableOrder {
  const factory TableOrder({
    int? order_id,
    String? status,
    DateTime? created_at,
    Cart? cart,
    int? total_price,
    int? table_number,
  }) = _TableOrder;

  factory TableOrder.fromJson(Map<String, dynamic> json) => _$TableOrderFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    int? id,
    int? user,
    int? table,
    int? total_price,
    List<CartItem>? cart_items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    int? id,
    int? food,
    int? quantity,
    String? price,
    String? food_name,
    String? food_image,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}
