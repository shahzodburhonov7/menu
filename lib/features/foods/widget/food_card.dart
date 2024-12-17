import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    this.onTap,
    required this.name,
    required this.price,
    required this.image,
    required this.loading,
  });

  final void Function()? onTap;
  final String name;
  final String price;
  final String image;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 1,
        child: Padding(
          padding: REdgeInsets.all(8.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140.h,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: const Alignment(0.8, -0.8),
                    child: ZoomTapAnimation(
                      onTap: onTap,
                      child: const CircleAvatar(
                        radius: 16,
                        backgroundColor: AppColors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              name.s(14.sp).c(AppColors.hintTextColor).w(400),
              '$price'.s(14.sp).w(600).c(AppColors.black),
            ],
          ),
        ),
      ),
    );
  }
}
