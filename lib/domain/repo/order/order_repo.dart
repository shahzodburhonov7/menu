import 'package:WaiterPro/domain/model/table_order/table_order.dart';

abstract class OrderRepo {
  Future<TableOrder> orderTable({required int number});

  Future<void> orderConfirm({required int orderId});

  Future<void> orderSale({
    required int foodId,
    required int quantity,
    required int cartId,
  });

  Future<void> orderDelete({required String cartItem});
  Future<void> quantityUpdate({required int quantity, required int cart_item_id});
}
