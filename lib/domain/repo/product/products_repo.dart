import 'package:restaurants_menu/domain/model/food_info/food_info.dart';
import 'package:restaurants_menu/domain/model/products/products.dart';

abstract class ProductsRepo {
  Future<List<FoodProducts>> getProducts({
    required int page,
  });

  Future <List<FoodProducts>> foodCategoryId({
    required int page,
    required int id,
  });

  Future<FoodInfo> foodInfo({
    required int id,
  });
}
