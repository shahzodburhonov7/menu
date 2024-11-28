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

  Future<Response> orderDelete({required String cartDelete}) async {
    return await dio.delete("${Constants.apiCartDelete}$cartDelete/delete/");
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
}
