import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        width: double.infinity,
        padding: REdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: AppColors.boxDecoration,
          boxShadow: const [
            BoxShadow(
              color: AppColors.switchColor,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(10.0.dg),
        ),
        child: child);
  }
}
