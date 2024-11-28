import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';

abstract class TableProcessRepo {
  Future<List<TableProcess?>> orderList();

  Future<void> orderDone({required int orderId});

  Future<List<OrdersDoneList>> ordersDoneList();

  Future<List<TableProcess?>> tableProcessNumber({required int tableId});
}
