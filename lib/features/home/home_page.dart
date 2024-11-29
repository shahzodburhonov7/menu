import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/features/home/cubit/home_cubit.dart';
import 'package:WaiterPro/features/home/cubit/home_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class HomePage extends BasePage<HomeCubit, HomeBuildable, HomeListenable> {
  const HomePage({super.key});

  @override
  Widget builder(BuildContext context, HomeBuildable state) {
    final cubit= context.read<HomeCubit>();

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
                padding: REdgeInsets.symmetric(horizontal: 8),
                child: "motto".s(24.sp).w(600).tr(),
              ),
              SizedBox(height: 28.h),
              GestureDetector(
                onTap: () {},
                child: Assets.icons.burger.image(width: 353.w, height: 142.h),
              ),
              SizedBox(height: 28.h),
              GestureDetector(
                onTap: () {
                  // if (USER_TYPE == Constants.ofitsant) {
                  //
                  // } else if (USER_TYPE == Constants.kassir) {
                  //    cubit.postChose(id: 87);
                  //   context.router.push(
                  //     FoodsRoute(),
                  //   );
                  // }
                  context.router.push(
                    const TableRoute(),
                  );
                },
                child: Container(
                  width: 344.w,
                  height: 116.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff59F54F),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.images.cardOrder.svg(),
                          SizedBox(height: 8.h),
                          "New order"
                              .s(18.sp)
                              .w(500)
                              .c(
                                AppColors.white,
                              )
                              .tr(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 344.w,
                height: 116.h,
                decoration: BoxDecoration(
                  color: const Color(0xffFE728E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.finalCard.svg(),
                        SizedBox(height: 8.h),
                        "Finish Day"
                            .s(18.sp)
                            .w(500)
                            .c(
                              AppColors.white,
                            )
                            .tr(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
