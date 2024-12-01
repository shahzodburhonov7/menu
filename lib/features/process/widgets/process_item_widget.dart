import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/custom_button.dart';
import 'package:WaiterPro/domain/model/table_process/table_process.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({
    super.key,
    this.cartItems,
    this.price,
    this.table,
    required this.onTap,
    required this.editOnTap,
  });

  final List<CartItem>? cartItems;
  final String? price;
  final String? table;
  final void Function() onTap;
  final Function() editOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          cartItems!.length,
              (index) {
            return Padding(
              padding: REdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "${cartItems![index].food_image!}",
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cartItems![index].food_name!.s(14.sp).w(400),
                            SizedBox(height: 4.h),
                            Row(
                              children: [
                                "Number".s(12.sp).w(400).tr(),
                                ": ${cartItems![index].quantity!}"
                                    .toString()
                                    .s(12.sp)
                                    .w(400),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Spacer(),
                                Text(
                                  formatCurrency(cartItems![index].price!),
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const Divider(
                    color: AppColors.borderTextColor,
                    thickness: 1,
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Total amount".s(16.sp).w(600).tr(),
              Text(
                formatCurrency(price!),
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Table number".s(16.sp).w(600).tr(),
              "$table".s(20.sp).w(600),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  onTap: editOnTap,
                  text: "Edit".tr(),
                  size: 14.sp,
                  radius: 8,
                  color: const Color(0xFF2C2C3D),
                  backgroundColor: Colors.white,
                  width: 150.w,
                  height: 44.h),
              CustomButton(
                radius: 8,
                onTap: onTap,
                text: "Finish".tr(),
                width: 150.w,
                size: 14.sp,
                height: 44.h,
              ),
            ],
          ),
        ),
      ],
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
