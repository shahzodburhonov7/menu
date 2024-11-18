import 'package:restaurants_menu/domain/model/order_done_list/order_done_list.dart';
import 'package:restaurants_menu/domain/model/table_process/table_process.dart';

abstract class TableProcessRepo {
  Future<List<TableProcess?>> orderList();

  Future<void> orderDone({required int orderId});

  Future<List<OrdersDoneList>>ordersDoneList();
}
