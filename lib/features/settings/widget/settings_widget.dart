import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';

class SettingsWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final Widget? trailing;

  const SettingsWidget({
    super.key,
    required this.title,
    required this.icon,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.boxDecoration,
        boxShadow: [
          BoxShadow(
            color: AppColors.switchColor,
            spreadRadius: 1,
            blurRadius: 10.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        leading: icon,
        title: title.s(12).w(500),
        trailing: trailing,
      ),
    );
  }
}
