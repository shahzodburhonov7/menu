import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/scale_animation.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.loading = false,
    required this.onTap,
    required this.text,
    this.backgroundColor = const Color(0xFF2C2C3D),
    this.size = 16,
    this.fontWeight = 600,
    this.color = AppColors.white,
    this.width = 353,
    this.height = 56,
    this.radius = 15,
  });

  final double? radius;
  final double size;
  final Color? backgroundColor;
  final String text;
  final bool loading;
  final VoidCallback onTap;
  final int fontWeight;
  final double? width;
  final Color color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: () => !loading ? onTap() : {},
      child: SizedBox(
        height: height?.h,
        width: width?.w,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius!),
            ),
          ),
          onPressed: onTap,
          child: loading
              ? const CircularProgressIndicator()
              : text.s(size.sp).w(fontWeight).c(color),
        ),
      ),
    );
  }
}
