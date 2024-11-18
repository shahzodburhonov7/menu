import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_done_list.freezed.dart';
part 'order_done_list.g.dart';

List<OrdersDoneList> ordersDoneListFromJson(String str) => List<OrdersDoneList>.from(json.decode(str).map((x) => OrdersDoneList.fromJson(x)));

String ordersDoneListToJson(List<OrdersDoneList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class OrdersDoneList with _$OrdersDoneList {
  const factory OrdersDoneList({
    int? id,
    Cart? cart,
    String? status,
    DateTime? created_at,
    String? total_price,
  }) = _OrdersDoneList;

  factory OrdersDoneList.fromJson(Map<String, dynamic> json) => _$OrdersDoneListFromJson(json);
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