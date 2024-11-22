import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_menu/domain/model/table_order/table_order.dart';

part  'store_state.freezed.dart';

@freezed
class StoreBuildable with _$StoreBuildable {
  const factory StoreBuildable({
    @Default(0) int tableNumber,
    @Default(0) int count,
    @Default(false) bool loading,
    @Default(false) bool orderLoading,
    @Default(false) bool confirmLoading,
    @Default([]) List<dynamic> getTableList,
    TableOrder?  tableOrder,
  }) = _StoreBuildable;
}

@freezed
class StoreListenable with _$StoreListenable {
  const factory StoreListenable() = _StoreListenable;
}