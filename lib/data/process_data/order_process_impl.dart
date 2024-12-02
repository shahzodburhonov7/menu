import 'dart:convert';
import 'package:WaiterPro/domain/model/confirm_list/confirm_pagination.dart';
import 'package:WaiterPro/domain/model/confirm_price/confirm_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/src/core/paging_controller.dart';
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

  @override
  Future<List<ConfirmAll>> confirmList() async {
    final response = await orderProcessApi.confirmList();
    return List<ConfirmAll>.from(
      response.data.map((x) => ConfirmAll.fromJson(x as Map<String, dynamic>)),
    );
  }

  @override
  Future<List<ConfirmAll?>> tableConfirm({required int tableId}) async {
    final response = await orderProcessApi.orderConfirm(orderId: tableId);

    // Agar response ro'yxat bo'lsa
    if (response.data is List) {
      return List<ConfirmAll?>.from(
        (response.data as List).map((x) => ConfirmAll.fromJson(x)),
      );
    }

    // Agar faqat bitta obyekt qaytgan bo'lsa, uni ro'yxatga aylantirib qaytarish
    if (response.data is Map<String, dynamic>) {
      return [ConfirmAll.fromJson(response.data)];
    }

    throw Exception("Expected a List or Map but got ${response.data.runtimeType}");
  }

  // OrderProcessImpl sinfida
  @override
  Future<List<ConfirmAll>> confirmListAll() async {
    final response = await orderProcessApi.confirmListAll();
    return List<ConfirmAll>.from(
      response.data.map((x) => ConfirmAll.fromJson(x as Map<String, dynamic>)),
    );
  }

  @override
  Future<List<Result>> fetchConfirmAll({required int pageNumber}) async {
    final response = await orderProcessApi.confirmPaginationAll(pageNumber: pageNumber);
    return orderListFromJson(response.data);
  }

  @override
  PagingController<int, Result> getLocationController() {
    final orderController = PagingController<int, Result>(firstPageKey: 1);
    orderController.addPageRequestListener((pageKey) async {
      final locations = await fetchConfirmAll(
        pageNumber: pageKey
      );
      if (locations.length < 8) {
        orderController.appendLastPage(locations);
        return;
      }
      orderController.appendPage(locations, pageKey + 1);
    });
    return orderController;
  }


}





