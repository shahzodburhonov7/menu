import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/food_info/food_info.dart';

part 'about_state.freezed.dart';

@freezed
class AboutBuildable with _$AboutBuildable {
  const factory AboutBuildable({
    @Default(false) bool loading,
    FoodInfo? foodInfo,
    @Default(0) int count,
    @Default(false) bool orderLoading,
    @Default(0) int cartId,
  }) = _AboutBuildable;
}

@freezed
class AboutListenable with _$AboutListenable {
  const factory AboutListenable() = _AboutListenable;
}
