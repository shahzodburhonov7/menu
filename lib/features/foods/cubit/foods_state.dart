import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurants_menu/domain/model/category/food_category.dart';
import 'package:restaurants_menu/domain/model/products/products.dart';
import 'package:restaurants_menu/domain/model/table_order/table_order.dart';

part 'foods_state.freezed.dart';

@freezed
class FoodsBuildable with _$FoodsBuildable {
  const factory FoodsBuildable({
    @Default(false) bool loading,
    @Default(false) bool proLoading,
    @Default(false) bool pageLoading,
    @Default(false) bool orderLoading,
    @Default(0) int orderCount,
    @Default(0) int pageType,
    @Default([]) List<FoodCategory> foodCategoryList,
    @Default(0) int tableNumber,
    TableOrder?  tableOrder,
    @Default([]) List<dynamic> getTableList,
    @Default([]) List<FoodProducts> foodPro,
    @Default("") String type,
    @Default(0) int cartId,
  }) = _FoodsBuildable;
}

@freezed
class FoodsListenable with _$FoodsListenable {
  const factory FoodsListenable() = _FoodsListenable;
}
