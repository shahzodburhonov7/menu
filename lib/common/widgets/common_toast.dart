

import 'package:flutter/material.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';

class CommonToast {
  static void snackBar(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(milliseconds: 2000),
    EdgeInsets margin = const EdgeInsets.all(20),
    EdgeInsets padding = const EdgeInsets.all(10),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.validationRed,
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
