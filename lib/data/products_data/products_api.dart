import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';

@injectable
class ProductsApi {
  final Dio dio;

  ProductsApi(this.dio);

  Future<Response> productGet() async {
    return await dio.get(
        USER_TYPE == Constants.ofitsant || USER_TYPE == Constants.kassir
            ? Constants.apiFoodList
            : Constants.apiProductsGet);
  }

  Future<Response> productGetVegetables() async {
    return await dio.get(Constants.apiProductsGet);
  }

  Future<Response> foodCategoryId({required int id, required int page}) async {
    return await dio.get(
        USER_TYPE == Constants.ofitsant || USER_TYPE == Constants.kassir
            ? "${Constants.apiFoodsCategoryId}$id/foods/?page=$page"
            : "${Constants.apiProductCategoryId}$id/");
  }

  Future<Response> foodInfo({
    required int id,
  }) async {
    return await dio.get("${Constants.apiFoodsId}$id");
  }
  Future<Response> vegetablesInfo({
    required int id,
  }) async {
    return await dio.get("${Constants.apiProductInfo}$id");
  }

  Future<Response> productAllList() async {
    return await dio.get(Constants.apiProductCategory);
  }

  Future<Response> productSearch({required String query}) async {
    return await dio.get(
        USER_TYPE == Constants.ofitsant || USER_TYPE == Constants.kassir
            ? "${Constants.apiFoodSearch}$query"
            : "${Constants.apiProductsSearch}$query");
  }

  Future<Response> productAddList({
    required String productName,
    required File productImage,
    required int categoryId,
  }) async {
    return dio.post(
      Constants.apiProductAdd,
      data: FormData.fromMap(
        {
          "product_name": productName,
          'image': await MultipartFile.fromFile(productImage.path),
          "category": categoryId
        },
      ),
    );
  }
}
