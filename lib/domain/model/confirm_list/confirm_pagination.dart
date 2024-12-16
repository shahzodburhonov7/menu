import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'confirm_pagination.freezed.dart';
part 'confirm_pagination.g.dart';

ConfirmPagination confirmPaginationFromJson(String str) => ConfirmPagination.fromJson(json.decode(str));

String confirmPaginationToJson(ConfirmPagination data) => json.encode(data.toJson());

@freezed
class ConfirmPagination with _$ConfirmPagination {
  const factory ConfirmPagination({
    int? count,
    String? next,
    String? previous,
    List<Result>? results,
  }) = _ConfirmPagination;

  factory ConfirmPagination.fromJson(Map<String, dynamic> json) => _$ConfirmPaginationFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    Cart? cart,
    String? date,
    String? time,
    int? total_price,
    String? user_type,
    String? user_full_name,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
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
