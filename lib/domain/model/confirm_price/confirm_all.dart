import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'confirm_all.freezed.dart';
part 'confirm_all.g.dart';

List<ConfirmAll> confirmAllFromJson(String str) => List<ConfirmAll>.from(json.decode(str).map((x) => ConfirmAll.fromJson(x)));

String confirmAllToJson(List<ConfirmAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ConfirmAll with _$ConfirmAll {
  const factory ConfirmAll({
    int? id,
    Cart? cart,
    DateTime? date,
    String? time,
    int? total_price,
    String? user_type,
    String? user_full_name,
  }) = _ConfirmAll;

  factory ConfirmAll.fromJson(Map<String, dynamic> json) => _$ConfirmAllFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    int? id,
    int? table_number,
    List<CartItem>? cart_items,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    int? id,
    String? food,
    int? quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}