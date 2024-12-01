import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/finish_today/finish_today_repo.dart';
import 'package:WaiterPro/features/finish_day/cubit/finish_day_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class FinishDayCubit
    extends BaseCubit<FinishDayBuildable, FinishDayListenable> {
  FinishDayCubit(this.finishTodayRepo) : super(const FinishDayBuildable());
  final FinishTodayRepo finishTodayRepo;

  void finishToday() {
    callable(
        future: finishTodayRepo.finishToday(),
        buildOnStart: () => buildable.copyWith(loading: true),
        buildOnData: (d) => buildable.copyWith(finishToday: d, loading: false),
        buildOnError: (e) => buildable.copyWith(loading: false));
  }
}
