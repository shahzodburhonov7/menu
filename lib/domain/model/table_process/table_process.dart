import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'table_process.freezed.dart';
part 'table_process.g.dart';

List<TableProcess> tableProcessFromJson(String str) => List<TableProcess>.from(json.decode(str).map((x) => TableProcess.fromJson(x)));

String tableProcessToJson(List<TableProcess> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class TableProcess with _$TableProcess {
  const factory TableProcess({
    int? id,
    Cart? cart,
    String? status,
    DateTime? created_at,
    String? total_price,
  }) = _TableProcess;

  factory TableProcess.fromJson(Map<String, dynamic> json) => _$TableProcessFromJson(json);
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
