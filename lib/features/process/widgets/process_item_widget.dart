import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/custom_button.dart';
import 'package:restaurants_menu/domain/model/table_process/table_process.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.tableProcess,
    required this.onTap,
    required this.editOnTap,
  });

  final TableProcess tableProcess;
  final void Function() onTap;
  final Function() editOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          tableProcess.cart!.cart_items!.length,
          (index) {
            final cartItems = tableProcess.cart!.cart_items![index];
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
                              "${Constants.baseUrl}${cartItems.food_image!}",
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          cartItems.food_name!.s(14.sp).w(400),
                          SizedBox(height: 4.h),
                          "Son :${cartItems.quantity!}".toString().s(12.sp).w(400),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                              ),
                              cartItems.price!.s(16.sp).w(600)
                            ],
                          )
                        ],
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
          padding: REdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Jami summa:".s(16.sp).w(600),
              tableProcess.total_price!.s(20.sp).w(600),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Stol raqami:".s(16.sp).w(600),
              "${tableProcess.cart!.table!}".s(20.sp).w(600),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 8, vertical: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                radius: 8,
                onTap: onTap,
                text: "Tugatish",
                width: MediaQuery.of(context).size.width * 0.72,
                size: 14.sp,
                height: 44.h,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
