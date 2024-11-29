import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart';
import 'package:WaiterPro/features/done_order/cubit/done_state.dart';

@injectable
class DoneCubit extends BaseCubit<DoneBuildable, DoneListenable> {
  DoneCubit(this.repo) : super(const DoneBuildable());

  final TableProcessRepo repo;


  void orderDoneList(){
    callable(future: repo.ordersDoneList(),
      buildOnStart:()=> buildable.copyWith(loading: true),
      buildOnData:(d)=> buildable.copyWith(loading: false,orderDoneList: d),
      buildOnError:(d)=> buildable.copyWith(loading: false),
    );
  }
}
