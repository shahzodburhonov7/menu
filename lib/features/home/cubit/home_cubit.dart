import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/features/home/cubit/home_state.dart';

@injectable
class HomeCubit extends BaseCubit<HomeBuildable, HomeListenable> {
  HomeCubit(this.repo) : super(const HomeBuildable());
  final TableRepo repo;

  void postChose({required int id}) {
    callable(
      future: repo.tableChose(id: id),
      buildOnStart: () => buildable.copyWith(postTable: true),
      buildOnData: (d) => buildable.copyWith(postTable: false),
      buildOnError: (e) => buildable.copyWith(postTable: false),
      invokeOnData: (d) => const HomeListenable(effect: TableEffect.success),
      invokeOnError: (e) => const HomeListenable(effect: TableEffect.error),
    );
  }
}
