// To parse this JSON data, do
//
//     final doneList = doneListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'done_list.freezed.dart';
part 'done_list.g.dart';

List<DoneList> doneListFromJson(String str) => List<DoneList>.from(json.decode(str).map((x) => DoneList.fromJson(x)));

String doneListToJson(List<DoneList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class DoneList with _$DoneList {
  const factory DoneList({
    int? id,
    Cart? cart,
    DateTime? date,
    String? time,
    int? total_price,
    String? user_type,
    String? user_full_name,
  }) = _DoneList;

  factory DoneList.fromJson(Map<String, dynamic> json) => _$DoneListFromJson(json);
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
