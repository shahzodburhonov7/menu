import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/process/cubit/process_state.dart';

@injectable
class ProcessCubit extends BaseCubit<ProcessBuildable, ProcessListenable> {
  ProcessCubit(this.repo, this.storage) : super(const ProcessBuildable());
  final TableProcessRepo repo;
  final Storage storage;

  void processList() {
    debugPrint("salomlar ..");
    callable(
      future: repo.orderList(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (e) => buildable.copyWith(loading: false, tableProcess: e),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }

  void orderDone({required int orderId}) async {
    await callable(
      future: repo.orderDone(orderId: orderId),
      buildOnStart: () => buildable.copyWith(orderLoading: true),
      buildOnData: (d) => buildable.copyWith(orderLoading: false),
      buildOnError: (e) => buildable.copyWith(orderLoading: false),
    );
    processList();
  }

  Future<void> tableProcessNumber({required int tableId}) async {
    callable(
      future: repo.tableProcessNumber(tableId: tableId),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) => buildable.copyWith(tableProcess: data, loading: false),
    );
  }
}
