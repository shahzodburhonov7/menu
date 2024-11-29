import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/features/start/splash/cubit/splash_cubit.dart';
import 'package:WaiterPro/features/start/splash/cubit/splash_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';


@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    switch (state.effect) {
      case SplashEffect.login:
      context.router.replace( LoginRoute(),);
      case SplashEffect.home:
        context.router.replace( MainRoute(),);
      case null:
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.splash.image(),
            'WaiterPro'.s(40.sp).w(700).c(AppColors.black),
          ],
        ),
      ),
    );
  }
}
