import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/model/confirm_list/done_list.dart';

class CashierAll extends StatelessWidget {
  CashierAll({
    super.key,
    this.carts,
    required this.tableNumber,
    required this.dateNumber,
    required this.waiterName,
    required this.priceAll,
    required this.dateTime,
    required this.onTap,
  });

  final List<CartItem>? carts;
  final String tableNumber;
  final String dateNumber;
  final String dateTime;
  final String waiterName;
  final String priceAll;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Table number".s(20.sp).w(500).c(
              AppColors.textFinal,
            ).tr(),
            "${tableNumber}".s(20.sp).w(500)
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: List.generate(
            50,
                (index) => Expanded(
              child: Container(
                height: 1,
                color: index % 2 == 0 ? Colors.grey : Colors.transparent,
              ),
            ),
          ),
        ),
        ...List.generate(
          carts!.length,
              (i) {
            return Column(
              children: [
                Padding(
                  padding: REdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "${carts![i].food}"
                          .s(18.sp)
                          .w(500)
                          .c(AppColors.textFinal),
                      "${carts![i].quantity}".s(20.sp).w(500)
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        Row(
          children: List.generate(
            50,
                (index) => Expanded(
              child: Container(
                height: 1,
                color: index % 2 == 0 ? Colors.grey : Colors.transparent,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Date".s(18.sp).w(500).c(AppColors.textFinal).tr(),
            Text(
              dateNumber,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            )
            // "5".s(20)
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "time".s(18.sp).w(500).c(AppColors.textFinal).tr(),
            dateTime.s(20.sp).w(500)
          ],
        ),
        Padding(
          padding: REdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: List.generate(
              50,
                  (index) => Expanded(
                child: Container(
                  height: 1,
                  color: index % 2 == 0 ? Colors.grey : Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Girgitton:".s(18.sp).w(500).c(AppColors.textFinal),
            waiterName.s(20.sp).w(500)
          ],
        ),
        Row(
          children: List.generate(
            50,
                (index) => Expanded(
              child: Container(
                height: 1,
                color: index % 2 == 0 ? Colors.grey : Colors.transparent,
              ),
            ),
          ),
        ),
        Padding(
          padding: REdgeInsets.only(top: 20.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Total".s(18.sp).w(500).c(AppColors.textFinal).tr(),
              "${priceAll}".s(20.sp).w(500)
            ],
          ),
        ),
        Row(
          children: List.generate(
            50,
                (index) => Expanded(
              child: Container(
                height: 1,
                color: index % 2 == 0 ? Colors.grey : Colors.transparent,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),

      ],
    );
  }
}
