import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/domain/model/category/food_category.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_cubit.dart';
import 'package:restaurants_menu/features/foods/widget/food_category.dart';

class FoodsCategorySuccessfuly extends StatelessWidget {
  const FoodsCategorySuccessfuly({
    super.key,
    required this.foodCategoryList,
  });

  final List<FoodCategory> foodCategoryList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: foodCategoryList.length,
        itemBuilder: ((context, index) {
          return FoodCategoryWidget(
            onTap: () {
              context.read<FoodsCubit>().getFoodProductsId(id: foodCategoryList.elementAt(index).id!, page: 1);
            },
            image: foodCategoryList[index].image!,
            name: foodCategoryList[index].name_uz!,
          );
        }),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
