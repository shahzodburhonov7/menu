import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/data/order_data/order_api.dart';
import 'package:restaurants_menu/domain/model/table_order/table_order.dart';
import 'package:restaurants_menu/domain/repo/order/order_repo.dart';

@Injectable(as: OrderRepo)
class OrderRepoImpl extends OrderRepo {
  final OrderApi orderApi;

  OrderRepoImpl(this.orderApi);

  @override
  Future<TableOrder> orderTable({required int number}) async {
    final response = await orderApi.orderTable(id: number);
    final res = TableOrder.fromJson(response.data);
    debugPrint("$res");
    return res;
  }

  @override
  Future<void> orderSale({
    required int foodId,
    required int quantity,
    required int cartId,
  }) async {
    final response = await orderApi.orderSales(
      foodId: foodId,
      quantity: quantity,
      cartId: cartId,
    );
    return response.data;
  }

  @override
  Future<void> orderConfirm({required orderId}) async {
    await orderApi.orderConfirm(
      orderId: orderId,
    );
  }

  @override
  Future<void> orderDelete({required String cartItem}) async {
    await orderApi.orderDelete(cartDelete: cartItem);
  }
}
