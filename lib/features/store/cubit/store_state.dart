import 'package:WaiterPro/domain/model/product_card/product_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/table_order/table_order.dart';

part 'store_state.freezed.dart';

@freezed
class StoreBuildable with _$StoreBuildable {
  const factory StoreBuildable({
    @Default(0) int tableNumber,
    @Default(0) int tableNumberProduct,
    @Default(0) int cartId,
    @Default(0) int cartIdProduct,
    @Default(false) bool loading,
    @Default(false) bool orderLoading,
    @Default(false) bool confirmLoading,
    @Default(false) bool confirmLoadingProduct,
    @Default(false) bool productLoading,
    @Default([]) List<dynamic> getTableList,
    TableOrder? tableOrder,
    ProductCard? tableOrderProduct,
  }) = _StoreBuildable;
}

@freezed
class StoreListenable with _$StoreListenable {
  const factory StoreListenable({StoreEffect? effect}) = _StoreListenable;
}

enum StoreEffect{error,success}