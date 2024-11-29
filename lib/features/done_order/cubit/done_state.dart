import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
part  'done_state.freezed.dart';


@freezed
class DoneBuildable with _$DoneBuildable {
  const factory DoneBuildable({
    @Default(false) bool loading,
  @Default([])  List<OrdersDoneList> orderDoneList,
}) = _DoneBuildable;
}

@freezed
class DoneListenable with _$DoneListenable {
  const factory DoneListenable() = _DoneListenable;
}