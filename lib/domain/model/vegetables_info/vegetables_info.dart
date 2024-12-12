import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'vegetables_info.freezed.dart';
part 'vegetables_info.g.dart';

VegetablesInfo vegetablesInfoFromJson(String str) => VegetablesInfo.fromJson(json.decode(str));

String vegetablesInfoToJson(VegetablesInfo data) => json.encode(data.toJson());

@freezed
class VegetablesInfo with _$VegetablesInfo {
  const factory VegetablesInfo({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? image,
  }) = _VegetablesInfo;

  factory VegetablesInfo.fromJson(Map<String, dynamic> json) => _$VegetablesInfoFromJson(json);
}
