import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsBuildable with _$SettingsBuildable {
  const factory SettingsBuildable({
    @Default(false) bool isExpanded,
    @Default(true) bool isToggled,
    @Default("") String selectedLanguage,
  }) = _SettingsBuildable;
}

@freezed
class SettingsListenable with _$SettingsListenable {
  const factory SettingsListenable() = _SettingsListenable;
}
