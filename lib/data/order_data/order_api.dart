import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';

@injectable
class OrderApi {
  final Dio dio;

  OrderApi(this.dio);

  Future<Response> orderTable({required int id}) async {
    return await dio.post(
      Constants.apiOrder,
      data: FormData.fromMap(
        {"cart ": id},
      ),
    );
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
}
