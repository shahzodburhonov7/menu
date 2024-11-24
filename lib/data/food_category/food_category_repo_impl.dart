import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/data/food_category/food_category_api.dart';
import 'package:restaurants_menu/domain/model/category/food_category.dart';
import 'package:restaurants_menu/domain/repo/category/category_repo.dart';

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
}
