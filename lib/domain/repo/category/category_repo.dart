import 'package:restaurants_menu/domain/model/category/food_category.dart';

abstract class FoodCategoryRepo {
  Future<List<FoodCategory>> foodCategory({required int page});
}
