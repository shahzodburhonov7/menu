import 'dart:convert';

import 'package:WaiterPro/domain/model/vegetables/vegetables_all.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/data/food_category/food_category_api.dart';
import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/domain/repo/category/category_repo.dart';

@Injectable(as: FoodCategoryRepo)
class FoodCategoryImpl extends FoodCategoryRepo {
  final FoodCategoryApi api;

  FoodCategoryImpl(this.api);

  @override
  Future<List<FoodCategory>> foodCategory({required int page}) async {
    final response = await api.foodCategory(page: page);
    return foodCategoryFromJson(
      jsonEncode(response.data),
    );
  }

  @override
  Future<List<FoodCategory>> vegetablesCategory({required int page}) async {
    final response = await api.foodCategory(page: page);
    return foodCategoryFromJson(
      jsonEncode(response.data),
    );
  }
}
