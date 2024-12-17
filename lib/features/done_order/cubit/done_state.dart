import 'package:WaiterPro/domain/model/confirm_list/done_list.dart';
import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:WaiterPro/domain/model/product_progress/product_progress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
part 'done_state.freezed.dart';

@freezed
class DoneBuildable with _$DoneBuildable {
  const factory DoneBuildable({
    @Default(false) bool loading,
    @Default([]) List<OrdersDoneList> orderDoneList,
    @Default(false) bool confirmLoading,
    @Default([]) List<ConfirmAll?> confirmAll,
    @Default([]) List<DoneList?> confirmAllOrder,
    @Default([]) List<ProductProgress?> productProgress,
    @Default([]) List<ProductProgress?> productConfirmList,
    @Default(false) bool productLoading,
    @Default(1) int pageNumber,
    @Default(1) int totalPages,
    @Default(1) int currentPage,
    int? count,
    String? next,
    String? previous,
    @Default(false) bool hasMore,
    @Default(false) bool isLoading,
  }) = _DoneBuildable;
}

@freezed
class DoneListenable with _$DoneListenable {
  const factory DoneListenable() = _DoneListenable;
}
