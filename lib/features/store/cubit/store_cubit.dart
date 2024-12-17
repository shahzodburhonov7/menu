import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/order/order_repo.dart';
import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/store/cubit/store_state.dart';

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

  void remove({required int quantity, required int itemId}) async {
    await callable(
      future: orderRepo.quantityUpdate(
          quantity: quantity -= 1, cart_item_id: itemId),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }

  void removeProduct({required int quantity, required int itemId}) async {
    await callable(
      future: orderRepo.quantityUpdateProduct(
          weight: quantity -= 1, cart_item_id: itemId),
    );
    tableOrderProduct(
        number: buildable.tableNumberProduct,
        cartId:  buildable.cartIdProduct);
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

    await callable(
      future: orderRepo.quantityUpdate(
          quantity: quantity += 1, cart_item_id: itemId),
      invokeOnError: (e) => const StoreListenable(effect: StoreEffect.error),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }

  void addProduct({required int quantity, required int itemId}) async {
    debugPrint("ItemId === $itemId::::CardId ${buildable.cartIdProduct}");

    await callable(
      future: orderRepo.quantityUpdateProduct(
          weight: quantity += 1, cart_item_id: itemId),
    );
    tableOrderProduct(
        number: buildable.tableNumberProduct, cartId:  buildable.cartIdProduct);
  }

  void tableOrderProduct({required int number, required int cartId}) {
    storage.cardCreate.set(cartId);
    build((buildable) => buildable.copyWith(tableNumberProduct: number));
    build((buildable) => buildable.copyWith(cartIdProduct: cartId));
    debugPrint(
        "debug === ${buildable.tableOrderProduct}:::: ${buildable.cartId}");
    callable(
        future: orderRepo.orderTableProduct(number: cartId),
        buildOnStart: () => buildable.copyWith(productLoading: true),
        buildOnData: (d) =>
            buildable.copyWith(productLoading: false, tableOrderProduct: d),
        buildOnError: (e) => buildable.copyWith(productLoading: false));
  }

  void tableOrder({required int number, required int cartId}) {
    storage.cardId.set(cartId);
    build((buildable) => buildable.copyWith(tableNumber: number));
    build((buildable) => buildable.copyWith(cartId: cartId));
    debugPrint("debug === ${buildable.tableNumber}:::: ${buildable.cartId}");

    callable(
        future: orderRepo.orderTable(number: cartId),
        buildOnStart: () => buildable.copyWith(orderLoading: true),
        buildOnData: (d) =>
            buildable.copyWith(orderLoading: false, tableOrder: d),
        buildOnError: (e) => buildable.copyWith(orderLoading: false));
  }

  void orderConfirm({required int orderId}) {
    callable(
      future: orderRepo.orderConfirm(orderId: orderId),
      buildOnStart: () => buildable.copyWith(confirmLoading: true),
      buildOnData: (d) => buildable.copyWith(confirmLoading: false),
      buildOnError: (e) => buildable.copyWith(confirmLoading: false),
      invokeOnData: (d) => const StoreListenable(effect: StoreEffect.success),
      invokeOnError: (e) => const StoreListenable(effect: StoreEffect.error),
    );
  }

  void orderConfirmProduct({required int orderId}) {
    callable(
      future: orderRepo.orderConfirmProduct(orderId: orderId),
      buildOnStart: () => buildable.copyWith(confirmLoadingProduct: true),
      buildOnData: (d) => buildable.copyWith(confirmLoadingProduct: false),
      buildOnError: (e) => buildable.copyWith(confirmLoadingProduct: false),
      invokeOnData: (d) => const StoreListenable(effect: StoreEffect.success),
      invokeOnError: (e) => const StoreListenable(effect: StoreEffect.error),
    );
  }

  void deleteCart({required String deleteCart}) async {
    await callable(
      future: orderRepo.orderDelete(
        cartItem: deleteCart,
      ),
    );
    tableOrder(number: buildable.tableNumber, cartId: buildable.cartId);
  }

  void deleteCartProduct({required String deleteCart}) async {
    await callable(
      future: orderRepo.orderDeleteProduct(
        cartItem: deleteCart,
      ),
    );
    tableOrderProduct(
        number: buildable.tableNumberProduct, cartId: buildable.cartIdProduct);
  }
}
