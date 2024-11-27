import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_cubit.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_state.dart';
import 'package:restaurants_menu/features/foods/widget/foods_all_shimmer.dart';
import 'package:restaurants_menu/features/foods/widget/foods_all_successfuly.dart';
import 'package:restaurants_menu/features/foods/widget/foods_bottom_sheet.dart';
import 'package:restaurants_menu/features/foods/widget/foods_category_shimmer.dart';
import 'package:restaurants_menu/features/foods/widget/foods_category_successfuly.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class FoodsPage extends BasePage<FoodsCubit, FoodsBuildable, FoodsListenable> {
  FoodsPage({super.key});

  @override
  void init(BuildContext context) {
    context.read<FoodsCubit>().getCategory(page: 1);
    context.read<FoodsCubit>().getAllTable();
    context
        .read<FoodsCubit>()
        .tableOrder(number: context.read<FoodsCubit>().storage.cardId.call()!);

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
              state.loading
                  ? const FoodsCategoryShimmer()
                  : FoodsCategorySuccessfuly(
                      foodCategoryList: state.foodCategoryList,
                    ),
              SizedBox(height: 12.h),
              "All dishes".s(20.sp).w(600).tr(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              state.proLoading
                  ? const FoodsAllShimmer()
                  : FoodsAllSuccessFully(
                      foodsPro: state.foodPro,
                      loadingPro: state.proLoading,
                    ),
            ],
          ),
        ),
      ),
      bottomSheet: state.tableOrder?.cart_items == null ||
              state.tableOrder!.cart_items!.isEmpty
          ? const SizedBox.shrink()
          : FoodsBottomSheetWidget(
              tableOrder: state.tableOrder!,
            ),
    );
  }
}
