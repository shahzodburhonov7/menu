import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/scale_animation.dart';

class LanguageContainer extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final void Function() onTap;
  final Widget icon;

  const LanguageContainer({
    super.key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: onTap,
      child: Container(
        padding: REdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 9.h,
        ),
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
        ),
        child: Row(
          children: [
            icon,
            SizedBox(width: 10.w),
            text.s(12).w(400).c(textColor),
          ],
        ),
      ),
    );
  }
}
