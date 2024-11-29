import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/main/cubit/main_state.dart';

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
    debugPrint('userType: ${USER_TYPE=storage.userType.call() ?? ''}');

  }
}
