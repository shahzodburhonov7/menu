import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListAdd extends StatelessWidget {
  final List<FoodCategory> items;
  final ValueNotifier<FoodCategory?> selectedValueNotifier;

  ProductListAdd({
    super.key,
    required this.items,
    required this.selectedValueNotifier,
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold();
  }
}
