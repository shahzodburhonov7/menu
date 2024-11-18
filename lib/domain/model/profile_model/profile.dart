import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile.freezed.dart';
part 'profile.g.dart';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

@freezed
class Profile with _$Profile {
  const factory Profile({
    String? first_name,
    String? last_name,
    dynamic profile_image,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}
