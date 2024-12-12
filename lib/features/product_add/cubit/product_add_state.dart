import 'dart:io';

import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_add_state.freezed.dart';

@freezed
class ProductAddBuildable with _$ProductAddBuildable {
  const factory ProductAddBuildable({
    @Default(false) bool isExpanded,
    @Default(false) bool addLoading,
    @Default(false) bool loading,
    @Default([]) List<FoodCategory> foodCategoryList,
    FoodCategory? selectedCategory,
    File? selectedImage,
    @Default('') String productName,
    @Default('') String productCategory,
    @Default('') String productImage,
    @Default('') String selectedCategoryError,
    @Default('') String productNameError,
    @Default('') String productImageError,
    @Default('') String categoryIdError,
  }) = _ProductAddBuildable;
}

@freezed
class ProductAddListenable with _$ProductAddListenable {
  const factory ProductAddListenable({ProductEffect? effect}) =
      _ProductAddListenable;
}

enum ProductEffect { error, success }
