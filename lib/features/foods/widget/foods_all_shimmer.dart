import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class FoodsAllShimmer extends StatelessWidget {
  const FoodsAllShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 50.0,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: AppColors.shimmerBaseColor,
            highlightColor: AppColors.shimmerHeighColor,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 100.h,
                width: 100.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
