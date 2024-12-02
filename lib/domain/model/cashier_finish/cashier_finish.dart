import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'cashier_finish.freezed.dart';
part 'cashier_finish.g.dart';

CashierFinish cashierFinishFromJson(String str) => CashierFinish.fromJson(json.decode(str));

String cashierFinishToJson(CashierFinish data) => json.encode(data.toJson());

@freezed
class CashierFinish with _$CashierFinish {
  const factory CashierFinish({
    DateTime? sana,
    int? orders_count,
    int? delivery,
    int? total_price,
    String? cashier,
  }) = _CashierFinish;

  factory CashierFinish.fromJson(Map<String, dynamic> json) => _$CashierFinishFromJson(json);
}
