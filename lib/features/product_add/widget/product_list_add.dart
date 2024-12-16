import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:flutter/material.dart';

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
