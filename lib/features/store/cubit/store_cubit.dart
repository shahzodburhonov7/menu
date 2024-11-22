import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/order/order_repo.dart';
import 'package:restaurants_menu/domain/repo/table/table_repo.dart';
import 'package:restaurants_menu/features/store/cubit/store_state.dart';

@injectable
class StoreCubit extends BaseCubit<StoreBuildable, StoreListenable> {
  StoreCubit(this.repo, this.orderRepo) : super(const StoreBuildable());
  final TableRepo repo;
  final OrderRepo orderRepo;

  void selectTable({required int tableNumber}) {
    build((buildable) => buildable.copyWith(tableNumber: tableNumber));
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

  void getAllTable() {
    callable(
      future: repo.getTable(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, getTableList: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }


  void tableOrder({required int number}) {
    callable(
        future: orderRepo.orderTable(number: number),
        buildOnStart: () => buildable.copyWith(orderLoading: true),
        buildOnData: (d) =>
            buildable.copyWith(orderLoading: false, tableOrder: d),
        buildOnError: (e) => buildable.copyWith(orderLoading: false));
    debugPrint(
      "debug ======> ${buildable.tableOrder}",
    );
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
    tableOrder(number: buildable.tableNumber);
  }
}
