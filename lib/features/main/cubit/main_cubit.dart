import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/main/cubit/main_state.dart';

@injectable
class MainCubit extends BaseCubit<MainBuildable, MainListenable> {
  MainCubit(this.storage) : super(const MainBuildable()) {
    userType();
  }

  final Storage storage;

  void setCurrentIndex(int index) =>
      build((buildable) => buildable.copyWith(currentIndex: index));

  int onTapped() {
    return buildable.currentIndex;
  }

  void userType() async {
    build((buildable) => buildable.copyWith(type: storage.userType.call()!));
  }
}
