import 'package:WaiterPro/domain/model/product_card/product_card.dart';
import 'package:WaiterPro/domain/model/vegetables/vegetables_all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/domain/model/products/products.dart';
import 'package:WaiterPro/domain/model/table_order/table_order.dart';

part 'foods_state.freezed.dart';

@freezed
class FoodsBuildable with _$FoodsBuildable {
  const factory FoodsBuildable({
    @Default(false) bool loading,
    @Default(false) bool loadingVegetables,
    @Default(false) bool proLoading,
    @Default(false) bool pageLoading,
    @Default(false) bool orderLoading,
    @Default(false) bool orderLoadingProduct,
    @Default(false) bool vegetablesOrder,
    @Default(false) bool vegetablesOrderPro,
    @Default(false) bool postCreate,

    @Default(0) int orderCount,
    @Default(0) int pageType,
    @Default([]) List<FoodCategory> foodCategoryList,
    @Default([]) List<VegetablesAll> vegetablesAll,
    @Default(0) int tableNumber,
    TableOrder? tableOrder,
    ProductCard? tableOrderProduct,
    @Default([]) List<dynamic> getTableList,
    @Default([]) List<FoodProducts> foodPro,
    @Default([]) List<VegetablesAll> vegetablesPro,
    @Default("") String type,
    @Default(0) int cartId,
    @Default(0) int cartIdProduct,

  }) = _FoodsBuildable;
}

@freezed
class FoodsListenable with _$FoodsListenable {
  const factory FoodsListenable() = _FoodsListenable;
}
