import 'package:WaiterPro/domain/model/cashier_finish/cashier_finish.dart';
import 'package:WaiterPro/domain/model/finish/finish_today.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(false) bool postTable,
    @Default(false) bool postCreate,
    @Default(false) bool loading,
    FinishToday? finishToday,
    CashierFinish? cashierFinish,
    @Default(false) bool cashLoading,
  }) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable({TableEffect? effect}) = _HomeListenable;
}

enum TableEffect {

  homeSuccess,
  homeError,
  finishToday,
  finishTodayError,
}
