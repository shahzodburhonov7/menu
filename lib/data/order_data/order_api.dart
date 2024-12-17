import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';

@injectable
class OrderApi {
  final Dio dio;

  OrderApi(this.dio);

  Future<Response> orderTable({required int id}) async {
    return await dio.get(
      "${Constants.apiOrder}$id/",
    );
  }

  Future<Response> orderProduct({required int id}) async {
    return await dio.get("${Constants.apiOrderProduct}$id/");
  }

  Future<Response> fetchPaginatedOrders({required int page}) async {
    return await dio.get(
      "${Constants.apiFinishPagination}?page=$page",
    );
  }



  Future<Response> orderConfirm({required int orderId}) async {
    return await dio.post(
      Constants.apiOrderCreate,
      data: FormData.fromMap(
        {
          "cart": orderId,
        },
      ),
    );
  }
  Future<Response> orderConfirmProduct({required int orderId}) async {
    return await dio.post(
      Constants.apiProductCreate,
      data: FormData.fromMap(
        {
          "cart": orderId,
        },
      ),
    );
  }

  Future<Response> orderDelete({required String cartDelete}) async {
    return await dio.delete("${Constants.apiCartDelete}$cartDelete/delete/");
  }
  Future<Response> orderDeleteProduct({required String cartDelete}) async {
    return await dio.delete("${Constants.apiProductDelete}$cartDelete/delete/");
  }

  Future<Response> orderSales({
    required int foodId,
    required int quantity,
    required int cartId,
  }) async {
    return await dio.post(
      Constants.apiSale,
      data: FormData.fromMap(
        {
          "food_id ": foodId,
          "quantity ": quantity,
          "cart_id ": cartId,
        },
      ),
    );
  }

  Future<Response> orderUpdate({
    required int quantity,
    required int itemId,
  }) async {
    return await dio.patch(
      "${Constants.apiOrderUpdate}/$itemId/update/",
      data: FormData.fromMap(
        {
          "quantity ": quantity,
        },
      ),
    );
  }

  Future<Response> orderProductUpdate({
    required int weight,
    required int cart_item_id ,
  }) async {
    return await dio.patch(
      "${Constants.apiProductUpdate}/$cart_item_id/update/",
      data: FormData.fromMap(
        {
          "weight": weight,
        },
      ),
    );
  }
}
