import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class FoodsCategoryShimmer extends StatelessWidget {
  const FoodsCategoryShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Shimmer.fromColors(
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
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade400,
                    highlightColor: AppColors.shimmerHeighColor,
                    child: SizedBox(
                      height: 10.h,
                      width: 50.w,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
