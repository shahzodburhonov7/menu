import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/data/process_data/order_process_api.dart';
import 'package:WaiterPro/domain/model/order_done_list/order_done_list.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart';

@Injectable(as: TableProcessRepo)
class OrderProcessImpl extends TableProcessRepo {
  final OrderProcessApi orderProcessApi;

  OrderProcessImpl(this.orderProcessApi);

  @override
  Future<List<TableProcess?>> orderList() async {
    final response = await orderProcessApi.orderProcess();
    final res = tableProcessFromJson(jsonEncode(response.data));
    debugPrint("========================= $res");
    return res;
  }

  @override
  Future<void> orderDone({required int orderId}) async {
    await orderProcessApi.orderDone(orderId: orderId);
  }

  @override
  Future<List<OrdersDoneList>> ordersDoneList() async {
    final response = await orderProcessApi.orderDoneList();
    final res = ordersDoneListFromJson(jsonEncode(response.data));
    return res;
  }

  @override
  Future<List<TableProcess?>> tableProcessNumber({required int tableId}) async {
    final response = await orderProcessApi.tableProcessNumber(tableId: tableId);
    return tableProcessFromJson(jsonEncode(response.data));
  }
}
