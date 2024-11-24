import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/bottom_sheet_custom.dart';
import 'package:restaurants_menu/common/widgets/common_toast.dart';
import 'package:restaurants_menu/common/widgets/custom_button.dart';
import 'package:restaurants_menu/features/store/cubit/store_cubit.dart';
import 'package:restaurants_menu/features/store/cubit/store_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class StorePage extends BasePage<StoreCubit, StoreBuildable, StoreListenable> {
  const StorePage({
    super.key,
  });

  @override
  void init(BuildContext context) {
    context.read<StoreCubit>().getAllTable();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, StoreBuildable state) {
    final cubit = context.read<StoreCubit>();
    if (state.loading) {
      return const CircularProgressIndicator();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: "Savat".s(24.sp).w(600),
          centerTitle: true,
          actions: [
            DropdownButton<int>(
              hint: Text("${state.tableNumber}"),
              onChanged: (value) {
                context.read<StoreCubit>().selectTable(
                      tableNumber: value!,
                    );
              },
              items: state.getTableList.map<DropdownMenuItem<int>>((table) {
                return DropdownMenuItem<int>(
                  onTap: () {
                    context.read<StoreCubit>().tableOrder(
                          number: table["number"],
                          cartId: table["cart_id"],
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
        body: state.tableOrder == null
            ? const SizedBox.shrink()
            : state.orderLoading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: REdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              ...List.generate(
                                state.tableOrder!.cart_items!.length,
                                (index) {
                                  return Padding(
                                    padding: REdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    "${Constants.baseUrl}${state.tableOrder!.cart_items![index].food_image!}",
                                                    width: 80.w,
                                                    height: 80.h,
                                                    fit: BoxFit.cover,
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    state
                                                        .tableOrder!
                                                        .cart_items![index]
                                                        .food_name!
                                                        .s(14.sp)
                                                        .w(400),
                                                    GestureDetector(
                                                      child: Assets.icons.cancel
                                                          .svg(),
                                                      onTap: () async {
                                                        context
                                                            .read<StoreCubit>()
                                                            .deleteCart(
                                                                deleteCart: state
                                                                    .tableOrder!
                                                                    .cart_items![
                                                                        index]
                                                                    .id
                                                                    .toString());
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 4.h),
                                                "Son :${state.tableOrder!.cart_items![index].quantity!}"
                                                    .toString()
                                                    .s(12.sp)
                                                    .w(400),
                                                SizedBox(
                                                  height: 13.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        cubit.remove(
                                                          quantity: state
                                                              .tableOrder!
                                                              .cart_items![
                                                                  index]
                                                              .quantity!,
                                                          itemId: state
                                                              .tableOrder!
                                                              .cart_items![
                                                                  index]
                                                              .id!,
                                                        );
                                                      },
                                                      child: Assets
                                                          .images.remove
                                                          .svg(),
                                                    ),
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    '${state.tableOrder!.cart_items![index].quantity}'
                                                        .s(12.sp)
                                                        .w(400),
                                                    SizedBox(
                                                      width: 8.w,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        cubit.add(
                                                          quantity: state
                                                              .tableOrder!
                                                              .cart_items![
                                                                  index]
                                                              .quantity!,
                                                          itemId: state
                                                              .tableOrder!
                                                              .cart_items![
                                                                  index]
                                                              .id!,
                                                        );
                                                      },
                                                      child: Assets.images.add
                                                          .svg(),
                                                    ),
                                                    SizedBox(
                                                      width: 55.w,
                                                    ),
                                                    state
                                                        .tableOrder!
                                                        .cart_items![index]
                                                        .price!
                                                        .s(16.sp)
                                                        .w(600),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        const Divider(
                                          color: AppColors.borderTextColor,
                                          thickness: 1,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
        bottomSheet: BottomSheetCustom(
          loading: state.confirmLoading,
          onTap: () {
            context.read<StoreCubit>().orderConfirm(
                  orderId: state.tableOrder!.id!,
                );
            CommonToast.snackBar(
              context,
              message: "Tastiqlandi",
            );
          },
          text: 'Davom etish',
        ),
      );
    }
  }
}
