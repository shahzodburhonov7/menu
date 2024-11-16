import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/start/splash/cubit/splash_state.dart';


@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this.storage) : super(const SplashBuildable()) {
    nextInitialPage();
  }

  final Storage storage;



  void nextInitialPage() {
    debugPrint('TOKEN: ${storage.token.call() ?? ''}');
    Future.delayed(
      const Duration(seconds: 2),
      () {
        final token = storage.token.call() ?? '';
        if (token.isEmpty) {
          invoke(const SplashListenable(effect: SplashEffect.login));
        } else {
          invoke(const SplashListenable(effect: SplashEffect.home));
        }
      },
    );
  }


}
