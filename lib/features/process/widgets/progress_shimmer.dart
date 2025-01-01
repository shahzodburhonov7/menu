import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ProgressShimmer extends StatelessWidget {
  const ProgressShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: Padding(
            padding: REdgeInsets.all(25.0),
            child: Column(
              children: [
                // Table Number
                shimmerRow("Stol raqami", 100),
                SizedBox(height: 12.h),
                shimmerLine(50),

                shimmerProductRow(),
                shimmerProductRow(),
                shimmerProductRow(),

                SizedBox(height: 12.h),
                shimmerLine(50),
                SizedBox(
                  height: 10,
                ),
                shimmerRow("Sana", 80),
                SizedBox(height: 8.h),
                shimmerRow("Vaqt", 80),

                SizedBox(height: 12.h),

                shimmerLine(50),
                SizedBox(height: 12.h),

                shimmerRow("Omborchi", 80),

                SizedBox(height: 20.h),
                shimmerLine(50), // Line separator
                SizedBox(height: 12.h),

                // Price
                shimmerRow("Summa", 100),
              ],
            ),
          ),
        );
      },
    );
  }

  // Correct return type as Row containing Shimmer items
  Row shimmerRow(String title, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        shimmerItem(18, width), // Shimmer for the title
        shimmerItem(20, 120), // Shimmer for the value (could be dynamic width)
      ],
    );
  }

  // Correct shimmerLine to return a Shimmer widget
  Shimmer shimmerLine(int count) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBaseColor,
      highlightColor: AppColors.shimmerHeighColor,
      child: Row(
        children: List.generate(
          count,
          (index) => Expanded(
            child: Container(
              height: 1,
              color: index % 2 == 0 ? Colors.grey : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }

  // Correct shimmerProductRow to return a Shimmer widget
  Shimmer shimmerProductRow() {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBaseColor,
      highlightColor: AppColors.shimmerHeighColor,
      child: Padding(
        padding: REdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            shimmerItem(18, 150), // Product name shimmer
            shimmerItem(20, 100), // Product weight shimmer
          ],
        ),
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
