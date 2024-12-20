import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/features/done_order/done_page.dart';
import 'package:WaiterPro/features/history/cubit/history_cubit.dart';
import 'package:WaiterPro/features/history/cubit/history_state.dart';
import 'package:WaiterPro/features/process/process_page.dart';

@RoutePage()
class HistoryPage
    extends BasePage<HistoryCubit, HistoryBuildable, HistoryListenable> {
  const HistoryPage({super.key});

  @override
  Widget builder(BuildContext context, HistoryBuildable state) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: "Order history".tr().s(24.sp).w(600),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.tabBackground,
                  border: Border.all(
                    color: AppColors.tabColor,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: AppColors.tabColor,
                  indicator: BoxDecoration(
                    color: AppColors.tabColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    border: Border.all(
                      color: AppColors.tabColor,
                      width: 2,
                    ),
                  ),
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.onSelected,
                  tabs:  [
                    Tab(
                      text: 'In process'.tr(),
                    ),
                    Tab(
                      text: 'Done'.tr(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
               Expanded(
                child: TabBarView(
                  children: [
                    ProcessPage(),
                    DonePage(),
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
