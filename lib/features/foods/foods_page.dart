import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_cubit.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_state.dart';
import 'package:restaurants_menu/features/foods/widget/food_card.dart';
import 'package:restaurants_menu/features/foods/widget/food_category.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class FoodsPage extends BasePage<FoodsCubit, FoodsBuildable, FoodsListenable> {
  FoodsPage({super.key});

  @override
  void init(BuildContext context) {
    context.read<FoodsCubit>().getCategory(page: 1);
    context.read<FoodsCubit>().getAllTable();

    super.init(context);
  }

  ScrollController scrollController = ScrollController();
  TextEditingController textEditingController = TextEditingController();

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
          actions: [
            DropdownButton<int>(
              hint: "${state.tableNumber}".s(18.sp),
              onChanged: (value) {
                context.read<FoodsCubit>().selectTable(
                      tableNumber: value!,
                    );
              },
              items: state.getTableList.map<DropdownMenuItem<int>>((table) {
                return DropdownMenuItem<int>(
                  onTap: () {
                    context.read<FoodsCubit>().tableOrder(
                          number: table["cart_id"],
                        );
                  },
                  value: table["number"],
                  child: Text(
                    "${table["number"]}",
                    style: const TextStyle(color: Colors.blue),
                  ),
                );
              }).toList(),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: REdgeInsets.only(right: 50),
                  child: "Lorem ipsum dolor sit amet continental".s(24.sp).w(600),
                ),
                SizedBox(height: 24.h),
                CommonSearchField(
                  onChanged: (query) {
                    cubit.searchFood(query: query);
                  },
                  controller: textEditingController,
                  hintText: "Pizza, Burger, hot dog, etc",
                ),
                SizedBox(height: 24.h),
                "Kategoriyalar".s(20.sp).w(600),
                SizedBox(height: 20.h),
                state.loading
                    ? const Center(child: CircularProgressIndicator())
                    : SizedBox(
                        height: 104.h,
                        child: ListView.builder(
                          itemCount: state.foodCategoryList.length,
                          itemBuilder: ((context, index) {
                            return FoodCategoryWidget(
                              onTap: () {
                                cubit.getFoodProductsId(id: state.foodCategoryList.elementAt(index).id!, page: 1);
                              },
                              image: state.foodCategoryList[index].image!,
                              name: state.foodCategoryList[index].name_uz!,
                            );
                          }),
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                SizedBox(height: 32.h),
                "Barcha taomlar".s(20.sp).w(600),
                state.proLoading
                    ? const Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 50.0,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: state.foodPro.length,
                        itemBuilder: (context, index) {
                          return index == state.foodPro.length
                              ? const CircularProgressIndicator()
                              : FoodCard(
                                  onTap: () {
                                    context.router.push(
                                      AboutRoute(
                                        foodId: state.foodPro[index].id!,
                                      ),
                                    );
                                  },
                                  name: "${state.foodPro[index].name_uz}",
                                  price: "${state.foodPro[index].price}",
                                  image: "${state.foodPro[index].image}",
                                  loading: state.orderLoading,
                                );
                        },
                      ),
              ],
            ),
          ),
        ),
        bottomSheet: state.tableOrder?.cart_items == null
            ? const SizedBox.shrink()
            : Container(
                color: AppColors.appColorOrange,
                height: 48.h,
                width: double.maxFinite,
                child: GestureDetector(
                  onTap: () {
                    context.router.push(
                      const StoreRoute(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        "Korzinka".s(16.sp).w(500),
                        CircleAvatar(
                          backgroundColor: AppColors.circleAvatar,
                          child: "${state.tableOrder!.cart_items!.length}".s(16.sp).w(600),
                        ),
                        "${state.tableOrder!.total_price!}".s(16.sp).w(500)
                      ],
                    ),
                  ),
                ),
              ));
  }
}
