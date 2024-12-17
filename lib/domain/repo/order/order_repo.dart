import 'package:WaiterPro/domain/model/paginated_response/paginated_card.dart';
import 'package:WaiterPro/domain/model/product_card/product_card.dart';
import 'package:WaiterPro/domain/model/table_order/table_order.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

abstract class OrderRepo {
  Future<TableOrder> orderTable({required int number});
  Future<ProductCard> orderTableProduct({required int number});

  Future<void> orderConfirm({required int orderId});
  Future<void> orderConfirmProduct({required int orderId});

  Future<List<Result>> fetchOrders({required int page});
  PagingController<int,Result> fetchOrdersPagination();


  Future<void> orderSale({
    required int foodId,
    required int quantity,
    required int cartId,
  });

  Future<void> orderDelete({required String cartItem});
  Future<void> orderDeleteProduct({required String cartItem});
  Future<void> quantityUpdate({required int quantity, required int cart_item_id});
  Future<void> quantityUpdateProduct({required int weight, required int cart_item_id});
}
