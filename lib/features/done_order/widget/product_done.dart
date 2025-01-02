import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/domain/model/product_progress/product_progress.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDone extends StatelessWidget {
  ProductDone({
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
            "Tartib raqam"
                .s(20.sp)
                .w(500)
                .c(
                  AppColors.textFinal,
                )
                .tr(),
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
                    children: ["${carts![i].product_name}".s(18.sp).w(500).c(AppColors.textFinal), "${carts![i].weight}".s(20.sp).w(500)],
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
            "Sana:".s(18.sp).w(500).c(AppColors.textFinal),
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
          children: ["Vaqt:".s(18.sp).w(500).c(AppColors.textFinal), dateTime.s(20.sp).w(500)],
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
          children: ["Omborchi:".s(18.sp).w(500).c(AppColors.textFinal), waiterName.s(20.sp).w(500)],
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
            children: ["Summa:".s(18.sp).w(500).c(AppColors.textFinal), "${priceAll}".s(20.sp).w(500)],
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
      ],
    );
  }
}
