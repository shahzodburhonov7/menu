import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';

@injectable
class BasketApi {
  final Dio dio;

  BasketApi(this.dio);

  Future<Response> basketCategory({required int page}) async {
    return await dio.get("${Constants.apiBasketCategory}$page");
  }
}
