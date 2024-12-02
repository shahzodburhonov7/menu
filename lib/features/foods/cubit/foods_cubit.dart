import 'package:WaiterPro/domain/model/table_order/table_order.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/category/category_repo.dart';
import 'package:WaiterPro/domain/repo/order/order_repo.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';
import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/foods/cubit/foods_state.dart';

@injectable
class FoodsCubit extends BaseCubit<FoodsBuildable, FoodsListenable> {
  FoodsCubit(
      this.repo, this.productRepo, this.storage, this.orderRepo, this.tableRepo)
      : super(const FoodsBuildable()) {
    userType();
  }

  final OrderRepo orderRepo;
  final FoodCategoryRepo repo;
  final ProductsRepo productRepo;
  final Storage storage;
  final TableRepo tableRepo;

  void searchFood({required String query}) {
    debugPrint('SALOM: $query');
    callable(
      future: productRepo.searchProducts(query: query),
      buildOnData: (data) => buildable.copyWith(foodPro: data),
    );
  }

  void selectTable({required int tableNumber}) {
    build((buildable) => buildable.copyWith(tableNumber: tableNumber));
  }

  void getAllTable() {
    callable(
      future: tableRepo.getTable(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, getTableList: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }

  void tableOrder({required int number}) async {

    storage.cardId.set(number);
    build((buildable) => buildable.copyWith(cartId: number));
    await callable(
      future: orderRepo.orderTable(number: number),
      buildOnStart: () => buildable.copyWith(orderLoading: true),
      buildOnData: (d) =>
          buildable.copyWith(orderLoading: false, tableOrder: d),
      buildOnError: (e) => buildable.copyWith(orderLoading: false),
    );
    // tableOrder(number: number);
    debugPrint(
      "debug ======> ${buildable.tableOrder}",
    );
  }

  void getFoodProducts({required int page}) {
    callable(
      future: productRepo.getProducts(),
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
