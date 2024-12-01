import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'finish_today.freezed.dart';
part 'finish_today.g.dart';

FinishToday finishTodayFromJson(String str) => FinishToday.fromJson(json.decode(str));

String finishTodayToJson(FinishToday data) => json.encode(data.toJson());

@freezed
class FinishToday with _$FinishToday {
  const factory FinishToday({
    DateTime? sana,
    int? orders,
    int? percentage_for,
    int? total_price,
    int? ofitsant_kpi,
  }) = _FinishToday;

  factory FinishToday.fromJson(Map<String, dynamic> json) => _$FinishTodayFromJson(json);
}
