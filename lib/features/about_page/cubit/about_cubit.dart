import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/order/order_repo.dart';
import 'package:restaurants_menu/domain/repo/product/products_repo.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/about_page/cubit/about_state.dart';

@injectable
class AboutCubit extends BaseCubit<AboutBuildable, AboutListenable> {
  AboutCubit(this.productRepo, this.orderRepo, this.storage) : super(const AboutBuildable());
  final ProductsRepo productRepo;
  final OrderRepo orderRepo;
  final Storage storage;

  void postOrder({
    required int foodId,
    required int quantity,
  }) {
    callable(
      future: orderRepo.orderSale(foodId: foodId, quantity: quantity, cartId: storage.cardId.call()!),
      buildOnStart: () => buildable.copyWith(orderLoading: true),
      buildOnData: (d) => buildable.copyWith(orderLoading: false),
      buildOnError: (e) => buildable.copyWith(orderLoading: false),
    );
  }

  void add() {
    build(
      (buildable) => buildable.copyWith(count: buildable.count + 1),
    );
  }

  void remove() {
    if (buildable.count != 0) {
      build(
        (buildable) => buildable.copyWith(count: buildable.count - 1),
      );
    }
  }

  void getFoodInfo({required int id}) {
    debugPrint("======================davlat nima gap $id");
    callable(
      future: productRepo.foodInfo(
        id: id,
      ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) => buildable.copyWith(foodInfo: data, loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
}
