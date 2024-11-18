import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_menu/domain/model/profile_model/profile.dart';

part  'profile_state.freezed.dart';

@freezed
class ProfileBuildable with _$ProfileBuildable {
  const factory ProfileBuildable({
    Profile? profile,
    @Default(false) bool loading
  }) = _ProfileBuildable;
}

@freezed
class ProfileListenable with _$ProfileListenable {
  const factory ProfileListenable() = _ProfileListenable;
}