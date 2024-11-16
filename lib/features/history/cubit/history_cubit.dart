import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/features/history/cubit/history_state.dart';


@injectable
class HistoryCubit extends BaseCubit<HistoryBuildable, HistoryListenable> {
  HistoryCubit() : super(const HistoryBuildable());



  void changeIndex(int index) {
    build(
          (buildable) => buildable.copyWith(selectedIndex: index),
    );
  }
}