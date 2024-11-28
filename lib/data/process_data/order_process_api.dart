import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';

@injectable
class OrderProcessApi {
  final Dio dio;

  OrderProcessApi(this.dio);

  Future<Response> orderProcess() async {
    return await dio.get(Constants.apiProcess);
  }

  Future<Response> orderDone({required int orderId}) async {
    return await dio.post(
      Constants.apiOrderDone,
      data: FormData.fromMap(
        {"order_id": orderId},
      ),
    );
  }

  Future<Response> orderDoneList() async {
    return await dio.get(Constants.apiDoneList);
  }

  Future<Response> tableProcessNumber({required int tableId}) async {
    return await dio.get("${Constants.apiProcessNumber}$tableId");
  }
}
