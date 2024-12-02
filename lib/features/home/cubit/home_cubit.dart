import 'package:WaiterPro/domain/repo/finish_today/finish_today_repo.dart';
import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/features/home/cubit/home_state.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this.repo, this.finishTodayRepo) : super(const HomeBuildable());
  final TableRepo repo;
  final FinishTodayRepo finishTodayRepo;

  void tableCreate() {
    callable(
      future: repo.tableCreated(),
      buildOnStart: () => buildable.copyWith(postCreate: true),
      buildOnData: (d) => buildable.copyWith(postCreate: false),
      buildOnError: (e) => buildable.copyWith(postCreate: false),
    );
  }

  void postChose({required int id}) {
    callable(
      future: repo.tableChose(id: id),
      buildOnStart: () => buildable.copyWith(postTable: true),
      buildOnData: (d) => buildable.copyWith(postTable: false),
      buildOnError: (e) => buildable.copyWith(postTable: false),
    );
  }

  void finishToday() {
    callable(
        future: finishTodayRepo.finishToday(),
        buildOnStart: () => buildable.copyWith(loading: true),
        buildOnData: (d) => buildable.copyWith(finishToday: d, loading: false),
        buildOnError: (e) => buildable.copyWith(loading: false),
        invokeOnData: (d) =>
            const HomeListenable(effect: TableEffect.homeSuccess),
        invokeOnError: (error) =>
            HomeListenable(effect: TableEffect.homeError));
  }

  void todayFinish() {
    callable(
        future: finishTodayRepo.todayCashier(),
        buildOnStart: () => buildable.copyWith(cashLoading: true),
        buildOnData: (d) =>
            buildable.copyWith(cashierFinish: d, cashLoading: false),
        buildOnError: (e) => buildable.copyWith(cashLoading: false),
        invokeOnData: (d) =>
            const HomeListenable(effect: TableEffect.finishToday),
        invokeOnError: (error) =>
            HomeListenable(effect: TableEffect.finishTodayError));
  }
}
