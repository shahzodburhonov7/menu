import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';

part 'process_state.freezed.dart';

@freezed
class ProcessBuildable with _$ProcessBuildable {
  const factory ProcessBuildable({
    @Default(false) bool loading,
    @Default([]) List<TableProcess?> tableProcess,
    @Default([]) List<ConfirmAll?> confirmAll,
    @Default(false) bool orderLoading,
    @Default(false) bool confirmLoading,
    @Default(false) bool confirmDoneLoading,

  }) = _ProcessBuildable;
}

@freezed
class ProcessListenable with _$ProcessListenable {
  const factory ProcessListenable() = _ProcessListenable;
}
