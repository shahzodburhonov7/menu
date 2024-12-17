import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/domain/model/product_card/product_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    required this.tableOrder,
  });
  final ProductCard tableOrder;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "Korzinka".s(16.sp).w(500),
            CircleAvatar(
              backgroundColor: AppColors.circleAvatar,
              child: "${tableOrder.cart_item!.length}".s(16.sp).w(600),
            ),
            "${tableOrder.total_price!}".s(16.sp).w(500)
          ],
        ),
      ),
    );
  }
}
