import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/domain/model/vegetables/vegetables_all.dart';

abstract class FoodCategoryRepo {
  Future<List<FoodCategory>> foodCategory({required int page});
  Future<List<FoodCategory>> vegetablesCategory({required int page});

}
