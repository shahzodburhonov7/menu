import 'package:WaiterPro/domain/model/confirm_list/confirm_pagination.dart';
import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
part  'done_state.freezed.dart';


@freezed
class DoneBuildable with _$DoneBuildable {
  const factory DoneBuildable({
    @Default(false) bool loading,
  @Default([])  List<OrdersDoneList> orderDoneList,
    @Default(false) bool confirmLoading,
    @Default([]) List<ConfirmAll?> confirmAll,
    @Default([]) List<ConfirmPagination?> confirmAllOrder,
    @Default(1) int pageNumber, // Default sahifa raqami 1
    @Default(1) int totalPages, // Total sahifalar
    @Default(1) int currentPage, // Total sahifalar
    int? count, // Ma'lumotlar soni
    String? next, // Keyingi sahifa (agar bo'lsa)
    String? previous, // Oldingi sahifa (agar bo'lsa)
    List<Result>? confirmPagination, // Ma'lumotlar ro'yxati
    @Default(false) bool hasMore,
    @Default(false) bool isLoading,

  }) = _DoneBuildable;
}

@freezed
class DoneListenable with _$DoneListenable {
  const factory DoneListenable() = _DoneListenable;
}