import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/order/order_repo.dart';
import 'package:restaurants_menu/domain/repo/table/table_repo.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/store/cubit/store_state.dart';

@injectable
class StoreCubit extends BaseCubit<StoreBuildable, StoreListenable> {
  StoreCubit(this.repo, this.orderRepo, this.storage)
      : super(const StoreBuildable());
  final TableRepo repo;
  final OrderRepo orderRepo;
  final Storage storage;

  void selectTable({required int tableNumber}) {
    build((buildable) => buildable.copyWith(tableNumber: tableNumber));
  }

  void remove({required int quantity, required int itemId}) {
    callable(
      future: orderRepo.quantityUpdate(
          quantity: quantity -= 1, cart_item_id: itemId),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }

  void getAllTable() {
    callable(
      future: repo.getTable(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, getTableList: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }

  void add({required int quantity, required int itemId}) async {
    debugPrint("ItemId === $itemId::::CardId ${buildable.cartId}");

    callable(
      future: orderRepo.quantityUpdate(
          quantity: quantity += 1, cart_item_id: itemId),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }

  void tableOrder({required int number, required int cartId}) {
    build((buildable) => buildable.copyWith(tableNumber: number));
    build((buildable) => buildable.copyWith(cartId: cartId));
    debugPrint("debug === ${buildable.tableNumber}:::: ${buildable.cartId}");

    callable(
        future: orderRepo.orderTable(number: storage.cardId.call()!.toInt()),
        buildOnStart: () => buildable.copyWith(orderLoading: true),
        buildOnData: (d) =>
            buildable.copyWith(orderLoading: false, tableOrder: d),
        buildOnError: (e) => buildable.copyWith(orderLoading: false));
  }

  void orderConfirm({required int orderId}) {
    callable(
      future: orderRepo.orderConfirm(orderId: orderId),
      buildOnStart: () => buildable.copyWith(confirmLoading: true),
      buildOnData: (d) => buildable.copyWith(
        confirmLoading: false,
      ),
      buildOnError: (e) => buildable.copyWith(confirmLoading: false),
    );
  }

  void deleteCart({required String deleteCart}) {
    callable(
      future: orderRepo.orderDelete(
        cartItem: deleteCart,
      ),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }
}
