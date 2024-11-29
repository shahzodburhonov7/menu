import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/domain/model/table_order/table_order.dart';

class FoodsBottomSheetWidget extends StatelessWidget {
  const FoodsBottomSheetWidget({
    super.key,
    required this.tableOrder,
  });
  final TableOrder tableOrder;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appColorOrange,
      height: 48.h,
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          context.router.push(
            const StoreRoute(),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              "Korzinka".s(16.sp).w(500),
              CircleAvatar(
                backgroundColor: AppColors.circleAvatar,
                child: "${tableOrder.cart_items!.length}".s(16.sp).w(600),
              ),
              "${tableOrder.total_price!}".s(16.sp).w(500)
            ],
          ),
        ),
      ),
    );
  }
}
