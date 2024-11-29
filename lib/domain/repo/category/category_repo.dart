import 'package:WaiterPro/domain/model/category/food_category.dart';

abstract class FoodCategoryRepo {
  Future<List<FoodCategory>> foodCategory({required int page});
}
