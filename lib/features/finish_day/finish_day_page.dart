import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/features/finish_day/cubit/finish_day_cubit.dart';
import 'package:WaiterPro/features/finish_day/cubit/finish_day_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class FinishDayPage
    extends BasePage<FinishDayCubit, FinishDayBuildable, FinishDayListenable> {
  const FinishDayPage({super.key});

  @override
  void init(BuildContext context) {
    context.read<FinishDayCubit>().finishToday();
    super.init(context);
  }

  String formatDate(String dateTime) {
    final DateTime parsedDate = DateTime.parse(dateTime);
    return DateFormat('dd.MM.yyyy').format(parsedDate);
  }

  @override
  Widget builder(BuildContext context, FinishDayBuildable state) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            context.router.pop();
          },
          child: Padding(
            padding: REdgeInsets.all(10.0),
            child: Assets.icons.back.svg(),

          ),
        ),
      ),
      body: state.loading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: REdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: REdgeInsets.all(24.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "Sana".s(20).w(500).c(AppColors.textFinal),
                                  Text(
                                    formatDate(
                                      "${state.finishToday!.sana!}",
                                    ),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  children: List.generate(
                                    50,
                                    (index) => Expanded(
                                      child: Container(
                                        height: 0.5,
                                        color: index % 2 == 0
                                            ? Colors.grey
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "Xizmatlar soni"
                                      .s(18.sp)
                                      .w(500)
                                      .c(AppColors.textFinal),
                                  "${state.finishToday!.orders!}".s(20).w(500)
                                ],
                              ),
                              Padding(
                                padding: REdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    "Xizmat uchun foiz"
                                        .s(18.sp)
                                        .w(500)
                                        .c(AppColors.textFinal),
                                    "${state.finishToday!.percentage_for!}%"
                                        .s(20)
                                        .w(500)
                                  ],
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  50,
                                  (index) => Expanded(
                                    child: Container(
                                      height: 0.5,
                                      color: index % 2 == 0
                                          ? Colors.grey
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: REdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    "Summa".s(20).w(500).c(AppColors.textFinal),
                                    Text(
                                      formatCurrency(
                                          "${state.finishToday!.total_price!} UZS"),
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "KPI".s(20).w(500).c(AppColors.textFinal),
                                  Text(
                                    formatCurrency(
                                        "${state.finishToday!.ofitsant_kpi!} UZS"),
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: List.generate(
                                  50,
                                  (index) => Expanded(
                                    child: Container(
                                      height: 0.5,
                                      color: index % 2 == 0
                                          ? Colors.grey
                                          : Colors.transparent,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }

  String formatCurrency(String input) {
    final numericPart = input.replaceAll(RegExp(r'[^\d]'), '');
    if (numericPart.isEmpty) return input;
    final int number = int.parse(numericPart);
    final formattedNumber =
        NumberFormat('#,###', 'en_US').format(number).replaceAll(',', ' ');
    final currencyPart = input.replaceAll(RegExp(r'\d'), '').trim();
    return "$formattedNumber $currencyPart";
  }
}
