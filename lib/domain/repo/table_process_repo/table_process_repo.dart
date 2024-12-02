import 'package:WaiterPro/domain/model/confirm_list/confirm_pagination.dart';
import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

abstract class TableProcessRepo {
  Future<List<TableProcess?>> orderList();

  Future<void> orderDone({required int orderId});
  // Future<void> orderConFirm({required int orderId});
  Future<List<Result>> fetchConfirmAll({required int pageNumber});
  PagingController<int, Result> getLocationController();

  Future<List<OrdersDoneList>> ordersDoneList();

  Future<List<TableProcess?>> tableProcessNumber({required int tableId});
  Future<List<ConfirmAll?>> tableConfirm({required int tableId});

  Future<List<ConfirmAll>>confirmList();
  Future<List<ConfirmAll>>confirmListAll();
}
