import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/domain/model/vegetables/vegetables_all.dart';
import 'package:WaiterPro/features/foods/widget/food_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodAllVegetables extends StatelessWidget {
  const FoodAllVegetables({
    super.key,
    required this.proAdd,
    required this.loadingAdd,
  });

  final List<VegetablesAll> proAdd;
  final bool loadingAdd;

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
          mainAxisExtent: MediaQuery.of(context).size.height * 0.26,
        ),
        itemCount: proAdd.length,
        itemBuilder: (context, index) {
          return FoodCard(
            onTap: () {
              context.router.push(
                VegetablesRoute(foodId: proAdd[index].id!),
              );
            },
            name: "Mahsulot nomi",
            price: "${proAdd[index].name_uz}",
            image: "${proAdd[index].image}",
            loading: loadingAdd,
          );
        },
      ),
    );
  }
}
