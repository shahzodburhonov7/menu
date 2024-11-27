import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/table_process_repo/table_process_repo.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';

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
}
