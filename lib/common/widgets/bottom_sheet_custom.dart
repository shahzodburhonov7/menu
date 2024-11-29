import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/scale_animation.dart';

class BottomSheetCustom extends StatelessWidget {
  const BottomSheetCustom({
    super.key,
    this.loading = false,
    required this.onTap,
    required this.text,
    this.size = 16,
    this.fontWeight = 600,
    this.color = AppColors.white,
    this.height = 56,
  });

  final double size;
  final String text;
  final bool loading;
  final VoidCallback onTap;
  final int fontWeight;

  final Color color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: () => !loading ? onTap() : {},
      child: Container(
        color: AppColors.appColorOrange,
        height: 48.h,
        width: double.maxFinite,
        child: GestureDetector(
          onTap: onTap,
          child: loading
              ? const CircularProgressIndicator()
              : Padding(
                padding:  REdgeInsets.all(8.0),
                child: text.s(size.sp).w(fontWeight).c(color).a(
                      TextAlign.center,
                    ),
              ),
        ),
      ),
    );
  }
}
