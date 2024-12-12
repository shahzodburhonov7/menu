
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'vegetables_all.freezed.dart';
part 'vegetables_all.g.dart';

List<VegetablesAll> vegetablesAllFromJson(String str) => List<VegetablesAll>.from(json.decode(str).map((x) => VegetablesAll.fromJson(x)));

String vegetablesAllToJson(List<VegetablesAll> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class VegetablesAll with _$VegetablesAll {
  const factory VegetablesAll({
    int? id,
    String? name_uz,
    String? name_ru,
    String? name_en,
    String? image,
  }) = _VegetablesAll;

  factory VegetablesAll.fromJson(Map<String, dynamic> json) => _$VegetablesAllFromJson(json);
}
