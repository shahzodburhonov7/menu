import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

class CommonSearchField extends StatelessWidget {
  const CommonSearchField({
    super.key,
    this.hintText,
    this.height=40,
  });

  final double? height;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Padding(
            padding: REdgeInsets.all(10.0),
            child: Assets.icons.search.svg(),
          ),
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.hintTextColor,
          ),
          contentPadding: REdgeInsets.all(11),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.borderTextColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.black,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
