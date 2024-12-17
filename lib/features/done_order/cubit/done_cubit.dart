import 'package:WaiterPro/domain/repo/order/order_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart';
import 'package:WaiterPro/features/done_order/cubit/done_state.dart';

@injectable
class DoneCubit extends BaseCubit<DoneBuildable, DoneListenable> {
  DoneCubit(this.repo, this.repoOrder) : super(const DoneBuildable());

  final TableProcessRepo repo;
  final OrderRepo repoOrder;


  Future<void> confirmList() async {
    await callable(
      future: repo.fetchConfirmAll(),
      buildOnStart: () => buildable.copyWith(confirmLoading: true),
      buildOnData: (d) => buildable.copyWith(
        confirmLoading: false,
        confirmAllOrder: d
      ),
      buildOnError: (e) => buildable.copyWith(confirmLoading: false),
    );
  }

  // Future<void> confirmListOrder({required int pageNumber}) async {
  //   debugPrint("Fetching page: $pageNumber");
  //
  //   await callable(
  //     future: repo.fetchConfirmAll(pageNumber: pageNumber),
  //     buildOnStart: () => buildable.copyWith(confirmLoading: true),
  //     buildOnData: (d) => buildable.copyWith(
  //       confirmLoading: false,
  //     ),
  //     buildOnError: (e) => buildable.copyWith(confirmLoading: false),
  //   );
  // }

  // void getAllOrder() {
  //   final controller = repoOrder.fetchOrdersPagination();
  //   build((buildable) => buildable.copyWith(confirmAllOrder: controller));
  // }

  void orderDoneList() {
    callable(
      future: repo.ordersDoneList(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, orderDoneList: d),
      buildOnError: (d) => buildable.copyWith(loading: false),
    );
  }

  void orderDoneListProduct() {
    callable(
      future: repo.ordersDoneProduct(),
      buildOnStart: () => buildable.copyWith(productLoading: true),
      buildOnData: (d) => buildable.copyWith(productLoading: false, productConfirmList: d),
      buildOnError: (d) => buildable.copyWith(productLoading: false),
    );
  }

  int getTotalPages(int count, int pageSize) {
    return (count / pageSize).ceil();
  }
}
