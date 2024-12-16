import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart';
import 'package:WaiterPro/features/done_order/cubit/done_state.dart';

@injectable
class DoneCubit extends BaseCubit<DoneBuildable, DoneListenable> {
  DoneCubit(this.repo) : super(const DoneBuildable());

  final TableProcessRepo repo;
  Future<void> confirmListOrder({required int pageNumber}) async {
    debugPrint("Fetching page: $pageNumber");
  }

  Future<void> confirmList({required int pageNumber}) async {
    debugPrint("Fetching page: $pageNumber");

    await callable(
      future: repo.fetchConfirmAll(pageNumber: pageNumber),
      buildOnStart: () => buildable.copyWith(confirmLoading: true),
      buildOnData: (d) => buildable.copyWith(
        confirmLoading: false,
        confirmPagination: [...?buildable.confirmPagination,...?d.results],
        totalPages: getTotalPages(d.count ??0,10),
        pageNumber: pageNumber
      ),
      buildOnError: (e) => buildable.copyWith(confirmLoading: false),
    );
  }

  // void getAllOrder() {
  //   final controller = repo.confirmListAll();
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

  int getTotalPages(int count, int pageSize) {
    return (count / pageSize).ceil();
  }
}
