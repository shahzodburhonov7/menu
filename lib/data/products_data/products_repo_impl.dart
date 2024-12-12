import 'dart:convert';
import 'dart:io';

import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/domain/model/vegetables/vegetables_all.dart';
import 'package:WaiterPro/domain/model/vegetables_info/vegetables_info.dart';
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
  Future<List<FoodProducts>> foodCategoryId(
      {required int id, required int page}) async {
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

  @override
  Future<void> productAdd({
    required String productName,
    required File productImage,
    required int categoryId,
  }) {
    final response = api.productAddList(
      productName: productName,
      productImage: productImage,
      categoryId: categoryId,
    );
    return response;
  }

  @override
  Future<List<FoodCategory>> getCategoryAll() async {
    final response = await api.productAllList();
    return foodCategoryFromJson(jsonEncode(response.data));
  }

  @override
  Future<List<VegetablesAll>> getVegetables() async {
    final response = await api.productGetVegetables();
    return vegetablesAllFromJson(jsonEncode(response.data));
  }

  @override
  Future<List<VegetablesAll>> foodCategoryVegetablesId (
      {required int page, required int id}) async{
    final response = await api.foodCategoryId(id: id, page: page);
    return vegetablesAllFromJson(
      jsonEncode(response.data),
    );
  }

  @override
  Future<VegetablesInfo> vegetablesInfo({required int id})async {
    final response = await api.vegetablesInfo(
      id: id,
    );
    return vegetablesInfoFromJson(
      jsonEncode(response.data),
    );
  }
}
