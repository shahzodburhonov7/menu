import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/domain/model/products/products.dart';
import 'package:restaurants_menu/features/foods/widget/food_card.dart';

class FoodsAllSuccessFully extends StatelessWidget {
  const FoodsAllSuccessFully({
    super.key,
    required this.foodsPro,
    required this.loadingPro,
  });

  final List<FoodProducts> foodsPro;
  final bool loadingPro;

  @override
  Widget build(BuildContext context) {
    final bool isUzbek = context.locale.languageCode == "uz";
    final bool isRussian = context.locale.languageCode == "ru";
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 50.0,
          mainAxisExtent: MediaQuery
              .of(context)
              .size
              .height * 0.26,
        ),
        itemCount: foodsPro.length,
        itemBuilder: (context, index) {
          return FoodCard(
            onTap: () {
              context.router.push(
                AboutRoute(
                  foodId: foodsPro[index].id!,
                ),
              );
            },
            name: isUzbek ? "${foodsPro[index].name_uz}" : isRussian
                ? "${foodsPro[index].name_ru}":"${foodsPro[index].name_en}",
            price: "${foodsPro[index].price}",
            image: "${foodsPro[index].image}",
            loading: loadingPro,
          );
        },
      ),
    );
  }
}
