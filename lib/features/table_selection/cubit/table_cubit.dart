import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/table/table_repo.dart';
import 'package:restaurants_menu/features/table_selection/cubit/table_state.dart';

@injectable
class TableCubit extends BaseCubit<TableBuildable, TableListenable> {
  TableCubit(this.repo) : super(const TableBuildable());
  final TableRepo repo;

  void getAllTable() {
    callable(
        future: repo.getTable(),
        buildOnStart: () => buildable.copyWith(loading: true),
        buildOnData: (d) => buildable.copyWith(loading: false, getTableList: d),
        buildOnError: (e) => buildable.copyWith(loading: false));
  }

  int setTable(int table,int tabledId) {
    return build(
      (buildable) => buildable.copyWith(table: table,tableId: tabledId),
    );
  }

  void postChose({required int id}) {
    debugPrint("Debug2");
    callable(
      future: repo.tableChose(id: id),
      buildOnStart: () => buildable.copyWith(postTable: true),
      buildOnData: (d) => buildable.copyWith(postTable: false),
      buildOnError: (e) => buildable.copyWith(postTable: false),
      invokeOnData: (d)=>const TableListenable(effect: TableEffect.success),
      invokeOnError: (e)=>const TableListenable(effect: TableEffect.error)
    );
  }


  // void tableId({required int id}) {
  //   callable(
  //     future: repo.tableCreated(id: id),
  //   );
  // }
}
