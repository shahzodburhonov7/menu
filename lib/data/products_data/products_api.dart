import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';

@injectable
class ProductsApi {
  final Dio dio;

  ProductsApi(this.dio);

  Future<Response> productGet() async {
    return await dio.get(USER_TYPE == 'ofitsant' ? Constants.apiFoodList : Constants.apiProductsGet);
  }

  Future<Response> foodCategoryId({required int id, required int page}) async {
    return await dio
        .get(USER_TYPE == 'ofitsant' ? "${Constants.apiFoodsCategoryId}$id/foods/?page=$page" : "${Constants.apiProductCategoryId}$id/");
  }

  Future<Response> foodInfo({
    required int id,
  }) async {
    return await dio.get("${Constants.apiFoodsId}$id");
  }

  Future<Response> productSearch({required String query}) async {
    return await dio.get(USER_TYPE == 'ofitsant' ? "${Constants.apiFoodSearch}$query" : "${Constants.apiProductsSearch}$query");
  }
}
