import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/features/home/cubit/home_cubit.dart';
import 'package:restaurants_menu/features/home/cubit/home_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';


@RoutePage()
class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: REdgeInsets.only(right: 20),
            child: Assets.icons.notifaction.svg(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(18),
          child: Column(
            children: [
              Padding(
                padding: REdgeInsets.only(right: 84, left: 10),
                child: "Lorem ipsum dolor sit amet continental".s(24).w(600),
              ),
              SizedBox(height: 28.h),
              Assets.icons.burger.image(width: 353.w, height: 142.h),
              SizedBox(height: 28.h),
              GestureDetector(
                onTap: () {
                  context.router.push(
                     const TableRoute(),
                  );
                },
                child: Assets.icons.banner.svg(width: 344.w, height: 116.h),
              ),
              SizedBox(
                height: 16.h,
              ),
              Assets.icons.bannerRed.svg(width: 344.w, height: 116.h)
            ],
          ),
        ),
      ),
    );
  }
}
