import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/category/category_repo.dart';
import 'package:restaurants_menu/domain/repo/order/order_repo.dart';
import 'package:restaurants_menu/domain/repo/product/products_repo.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_state.dart';

@injectable
class FoodsCubit extends BaseCubit<FoodsBuildable, FoodsListenable> {
  FoodsCubit(this.repo, this.productRepo, this.storage, this.orderRepo)
      : super(const FoodsBuildable()) {
    userType();
  }

  final OrderRepo orderRepo;
  final FoodCategoryRepo repo;
  final ProductsRepo productRepo;
  final Storage storage;

  void postOrder({
    required int foodId,
    required int quantity,
  }) {
    callable(
      future: orderRepo.orderSale(
          foodId: foodId, quantity: quantity, cartId: storage.cardId.call()!),
      buildOnStart: () => buildable.copyWith(orderLoading: true),
      buildOnData: (d) => buildable.copyWith(orderLoading: false),
      buildOnError: (e) => buildable.copyWith(orderLoading: false),
    );
  }

  void getFoodProducts({required int page}) {
    callable(
      future: productRepo.getProducts(page: page),
      buildOnStart: () => buildable.copyWith(proLoading: true),
      buildOnData: (data) =>
          buildable.copyWith(foodPro: data, proLoading: false),
      buildOnError: (e) => buildable.copyWith(proLoading: false),
    );
  }

  void getFoodProductsId({required int id, required int page}) {
    callable(
      future: productRepo.foodCategoryId(id: id, page: page),
      buildOnStart: () => buildable.copyWith(proLoading: true),
      buildOnData: (data) =>
          buildable.copyWith(foodPro: data, proLoading: false),
      buildOnError: (e) => buildable.copyWith(proLoading: false),
    );
  }

  void getCategory({required int page}) {
    callable(
      future: repo.foodCategory(page: page),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) =>
          buildable.copyWith(foodCategoryList: d, loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
    getFoodProducts(page: page);
  }

  void userType() async {
    build(
      (buildable) => buildable.copyWith(
        type: storage.userType.call()!,
      ),
    );
  }

  void nextData({required int id, required int page}) {
    callable(
      future: productRepo.foodCategoryId(id: id, page: page + 1),
      buildOnStart: () => buildable.copyWith(pageLoading: true),
      buildOnData: (data) =>
          buildable.copyWith(foodPro: data, pageLoading: false),
      buildOnError: (e) => buildable.copyWith(pageLoading: false),
    );
  }
}
