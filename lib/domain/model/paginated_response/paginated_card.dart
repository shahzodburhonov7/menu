// To parse this JSON data, do
//
//     final paginatedCard = paginatedCardFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'paginated_card.freezed.dart';
part 'paginated_card.g.dart';

PaginatedCard paginatedCardFromJson(String str) => PaginatedCard.fromJson(json.decode(str));

String paginatedCardToJson(PaginatedCard data) => json.encode(data.toJson());

@freezed
class PaginatedCard with _$PaginatedCard {
  const factory PaginatedCard({
    int? count,
    String? next,
    dynamic previous,
    List<Result>? results,
  }) = _PaginatedCard;

  factory PaginatedCard.fromJson(Map<String, dynamic> json) => _$PaginatedCardFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    Cart? cart,
    DateTime? date,
    String? time,
    int? total_price,
    UserType? user_type,
    UserFullName? user_full_name,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
List<Result> orderListFromJson(dynamic json) =>
    List<Result>.from(json.map((x) => Result.fromJson(x)));

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

enum UserFullName {
  EMPTY
}

final userFullNameValues = EnumValues({
  " ": UserFullName.EMPTY
});

enum UserType {
  KASSIR,
  OFITSANT
}

final userTypeValues = EnumValues({
  "kassir": UserType.KASSIR,
  "ofitsant": UserType.OFITSANT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
