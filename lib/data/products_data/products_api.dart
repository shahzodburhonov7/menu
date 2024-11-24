import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';

@injectable
class ProductsApi {
  final Dio dio;

  ProductsApi(this.dio);

  Future<Response> productGet() async {
    return await dio.get(Constants.apiFoodList);
  }

  Future<Response> foodCategoryId({required int id, required int page}) async {
    return await dio.get("${Constants.apiFoodsCategoryId}$id/foods/?page=$page");
  }

  Future<Response> foodInfo({
    required int id,
  }) async {
    return await dio.get("${Constants.apiFoodsId}$id");
  }

  Future<Response> productSearch({required String query}) async {
    return await dio.get("${Constants.apiFoodSearch}$query");
  }
}
