import 'package:flutter/material.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';

class CommonToast {
  static void snackBar(BuildContext context,
      {required String message,
      Duration duration = const Duration(milliseconds: 2000),
      EdgeInsets margin = const EdgeInsets.all(20),
      EdgeInsets padding = const EdgeInsets.all(10),
      final Color? color=AppColors.validationRed}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        margin: margin,
        padding: padding,
        duration: duration,
        content: Text(
          message,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
