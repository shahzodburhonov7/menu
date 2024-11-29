import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
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
          return Card(
            child: Padding(
              padding: REdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shimmerItem(140, 140),
                  const Spacer(),
                  shimmerItem(12, 50),
                  const Spacer(),
                  shimmerItem(14, 80),
                  const Spacer(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Shimmer shimmerItem(double height, double width) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBaseColor,
      highlightColor: AppColors.shimmerHeighColor,
      child: Padding(
        padding: REdgeInsets.symmetric(horizontal: 10.w),
        child: SizedBox(
          height: height.h,
          width: width.w,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ),
    );
  }
}
