import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/common/widgets/custom_button.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/foods/widget/food_all_vegetables.dart';
import 'package:WaiterPro/features/foods/widget/food_category_vegetables.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/common_search_field.dart';
import 'package:WaiterPro/features/foods/cubit/foods_cubit.dart';
import 'package:WaiterPro/features/foods/cubit/foods_state.dart';
import 'package:WaiterPro/features/foods/widget/foods_all_shimmer.dart';
import 'package:WaiterPro/features/foods/widget/foods_all_successfuly.dart';
import 'package:WaiterPro/features/foods/widget/foods_bottom_sheet.dart';
import 'package:WaiterPro/features/foods/widget/foods_category_shimmer.dart';
import 'package:WaiterPro/features/foods/widget/foods_category_successfuly.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class FoodsPage extends BasePage<FoodsCubit, FoodsBuildable, FoodsListenable> {
  FoodsPage({super.key});

  @override
  void init(BuildContext context) {
    if (USER_TYPE == Constants.ofitsant || USER_TYPE == Constants.kassir) {
      context.read<FoodsCubit>().getCategory(page: 1);
    } else {
      context.read<FoodsCubit>().getCategoryVegetables(page: 1);
    }
    if (USER_TYPE == Constants.ofitsant) {
      context.read<FoodsCubit>().getAllTable();
    }
    try {
      context.read<FoodsCubit>().tableOrder(
            number: context.read<FoodsCubit>().storage.cardId.call()!,
          );
    } catch (e) {
      print("Xatolik: $e");
    }

    debugPrint("assssasssssssssssssssssssssssssssss ");

    super.init(context);
  }

  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();

  @override
  void onFocusGained(BuildContext context) {
    context
        .read<FoodsCubit>()
        .tableOrder(number: context.read<FoodsCubit>().storage.cardId.call()!);
  }

  @override
  Widget builder(BuildContext context, FoodsBuildable state) {
    final cubit = context.read<FoodsCubit>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: state.type == 'omborchi'
            ? const SizedBox.shrink()
            : IconButton(
                onPressed: () {
                  context.router.replaceAll(
                    [
                      MainRoute(),
                    ],
                  );
                },
                icon: Assets.icons.back.svg(),
              ),
      ),
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "motto".s(24.sp).w(600).tr(),
              SizedBox(height: 20.h),
              CommonSearchField(
                onChanged: (query) {
                  cubit.searchFood(query: query);
                },
                controller: textEditingController,
                hintText: "Pizza, Burger, hot dog, etc",
              ),
              SizedBox(height: 10.h),
              "Categories".s(20.sp).w(600).tr(),
              SizedBox(height: 10.h),
              if (USER_TYPE == Constants.ofitsant ||
                  USER_TYPE == Constants.kassir)
                state.loading
                    ? const FoodsCategoryShimmer()
                    : FoodsCategorySuccessfully(
                        foodCategoryList: state.foodCategoryList,
                      )
              else
                state.vegetablesOrderPro
                    ? const FoodsCategoryShimmer()
                    : FoodsCategoryVegetablesSuccessfully(
                        foodCategoryList: state.foodCategoryList,
                      ),
              SizedBox(height: 12.h),
              "All dishes".s(20.sp).w(600).tr(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              if (USER_TYPE == Constants.ofitsant ||
                  USER_TYPE == Constants.kassir)
                state.proLoading
                    ? const FoodsAllShimmer()
                    : FoodsAllSuccessFully(
                        foodsPro: state.foodPro,
                        loadingPro: state.proLoading,
                      )
              else
                state.vegetablesOrder
                    ? const FoodsAllShimmer()
                    : FoodAllVegetables(
                        proAdd: state.vegetablesAll,
                        loadingAdd: state.vegetablesOrder,
                      ),
            ],
          ),
        ),
      ),
      bottomSheet: state.tableOrder?.cart_items == null ||
              state.tableOrder!.cart_items!.isEmpty
          ? CustomButton(
              radius: 0,
              width: double.infinity,
              onTap: () {
                context.router.push(
                  ProductAddRoute(),
                );
              },
              text: "Mahsulot qo’shish",
            )
          : FoodsBottomSheetWidget(
              tableOrder: state.tableOrder!,
            ),
    );
  }
}
