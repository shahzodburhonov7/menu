import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';

@injectable
class OrderProcessApi {
  final Dio dio;

  OrderProcessApi(this.dio);

  Future<Response> orderProcess() async {
    return await dio.get(Constants.apiProcess);
  }

  Future<Response> confirmList() async {
    return await dio.get(Constants.apiConfirmList);
  }

  Future<Response> confirmListAll() async {
    return await dio.get(Constants.apiConfirmAll);
  }

  Future<Response> confirmPaginationAll({required int pageNumber}) async {
    return await dio.get(
      Constants.apiConfirmAll,
      queryParameters: {
        'page': pageNumber,
      },
    );
  }

  Future<Response> orderDone({required int orderId}) async {
    return await dio.post(
      Constants.apiOrderDone,
      data: FormData.fromMap(
        {"order_id": orderId},
      ),
    );
  }

  Future<Response> orderConfirm({required int orderId}) async {
    final response = await dio.post(
      Constants.apiConfirm,
      data: FormData.fromMap({
        "order_id": orderId,
      }),
    );
    return response;
  }

  Future<Response> orderDoneList() async {
    return await dio.get(Constants.apiDoneList);
  }

  Future<Response> tableProcessNumber({required int tableId}) async {
    return await dio.get("${Constants.apiProcessNumber}$tableId");
  }
}
