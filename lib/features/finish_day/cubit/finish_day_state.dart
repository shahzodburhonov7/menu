import 'package:WaiterPro/domain/model/finish/finish_today.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part  'finish_day_state.freezed.dart';



@freezed
class FinishDayBuildable with _$FinishDayBuildable {
  const factory FinishDayBuildable({
    @Default(false) bool loading,
    FinishToday? finishToday
  }) = _FinishDayBuildable;
}

@freezed
class FinishDayListenable with _$FinishDayListenable {
  const factory FinishDayListenable() = _FinishDayListenable;
}