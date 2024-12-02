import 'package:WaiterPro/domain/model/cashier_finish/cashier_finish.dart';
import 'package:WaiterPro/domain/model/finish/finish_today.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part  'finish_day_state.freezed.dart';



@freezed
class FinishDayBuildable with _$FinishDayBuildable {
  const factory FinishDayBuildable({
    @Default(false) bool loading,
    FinishToday? finishToday,
    CashierFinish? cashierFinish,
    @Default(false) bool cashLoading,

  }) = _FinishDayBuildable;
}

@freezed
class FinishDayListenable with _$FinishDayListenable {
  const factory FinishDayListenable({FinishEffect? effect}) = _FinishDayListenable;
}
enum FinishEffect{error,errorCashier}