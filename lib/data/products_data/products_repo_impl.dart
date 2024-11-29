import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:WaiterPro/data/products_data/products_api.dart';
import 'package:WaiterPro/domain/model/food_info/food_info.dart';
import 'package:WaiterPro/domain/model/products/products.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl extends ProductsRepo {
  final ProductsApi api;

  ProductsRepoImpl(this.api);

  @override
  Future<List<FoodProducts>> getProducts() async {
    final response = await api.productGet();
    return foodProductsFromJson(jsonEncode(response.data));
  }

  @override
  Future<List<FoodProducts>> searchProducts({required String query}) async {
    final response = await api.productSearch(query: query);
    return foodProductsFromJson(jsonEncode(response.data));
  }

  @override
  Future<List<FoodProducts>> foodCategoryId({required int id, required int page}) async {
    final response = await api.foodCategoryId(id: id, page: page);
    return foodProductsFromJson(
      jsonEncode(response.data),
    );
  }

  @override
  Future<FoodInfo> foodInfo({
    required int id,
  }) async {
    final response = await api.foodInfo(
      id: id,
    );
    return foodInfoFromJson(
      jsonEncode(response.data),
    );
  }
}
