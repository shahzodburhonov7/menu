import 'package:WaiterPro/domain/model/confirm_list/done_list.dart';
import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
import 'package:WaiterPro/domain/model/product_progress/product_progress.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';

abstract class TableProcessRepo {
  Future<List<TableProcess?>> orderList();

  Future<void> orderDone({required int orderId});
  // Future<void> orderConFirm({required int orderId});
  Future<List<DoneList>> fetchConfirmAll();
  // PagingController<int, Result> getLocationController();
  Future<List<ProductProgress>> getProductProgress();

  Future<List<OrdersDoneList>> ordersDoneList();
  Future<List<ProductProgress>> ordersDoneProduct();

  Future<List<TableProcess?>> tableProcessNumber({required int tableId});
  Future<List<ProductProgress?>> productConfirm({required int order_id});
  Future<List<ConfirmAll?>> tableConfirm({required int tableId});

  Future<List<ConfirmAll>>confirmList();
  Future<List<ConfirmAll>>confirmListAll();
}
