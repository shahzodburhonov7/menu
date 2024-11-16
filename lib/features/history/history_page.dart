import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/features/history/cubit/history_cubit.dart';
import 'package:restaurants_menu/features/history/cubit/history_state.dart';
import 'package:restaurants_menu/features/process/process_page.dart';

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
          title: "Buyurtmalar tarixi".s(24.sp).w(600),
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
                  tabs: const [
                    Tab(
                      text: 'Jarayonda',
                    ),
                    Tab(
                      text: 'Bajarilgan',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),

              const Expanded(
                child: TabBarView(
                  children: [
                    ProcessPage(),
                    Center(
                      child: Text(
                        'Archived Page',
                      ),
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
