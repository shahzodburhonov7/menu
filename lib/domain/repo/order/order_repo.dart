import 'package:restaurants_menu/domain/model/table_order/table_order.dart';

abstract class OrderRepo {
  Future<TableOrder> orderTable({required int number});

  Future<void> orderConfirm({required int orderId});

  Future<void> orderSale({
    required int foodId,
    required int quantity,
    required int cartId,
  });

  Future<void> orderDelete({required String cartItem});
}
