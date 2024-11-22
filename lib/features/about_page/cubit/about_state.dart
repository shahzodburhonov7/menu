import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_menu/domain/model/food_info/food_info.dart';

part 'about_state.freezed.dart';

@freezed
class AboutBuildable with _$AboutBuildable {
  const factory AboutBuildable({
    @Default(false) bool loading,
    FoodInfo? foodInfo,
    @Default(0) int count,
    @Default(false) bool orderLoading,

  }) = _AboutBuildable;
}

@freezed
class AboutListenable with _$AboutListenable {
  const factory AboutListenable() = _AboutListenable;
}
