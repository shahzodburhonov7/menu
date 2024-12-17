import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/bottom_sheet_custom.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
import 'package:WaiterPro/features/store/cubit/store_cubit.dart';
import 'package:WaiterPro/features/store/cubit/store_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class StorePage extends BasePage<StoreCubit, StoreBuildable, StoreListenable> {
  const StorePage({
    super.key,
  });

  @override
  void listener(BuildContext context, StoreListenable state) {
    switch (state.effect) {
      case null:
        break;
      case StoreEffect.error:
        CommonToast.snackBar(context, message: 'Savat jarayonga qushilgan');
      case StoreEffect.success:
        context.router.replaceAll(
          [MainRoute()],
        );
    }
  }

  @override
  void init(BuildContext context) {
    if (USER_TYPE == Constants.kassir || USER_TYPE == Constants.ofitsant) {
      context.read<StoreCubit>().getAllTable();
      context.read<StoreCubit>().tableOrder(
            number: 0,
            cartId: context.read<StoreCubit>().storage.cardId.call()!,
          );
    } else {
      context.read<StoreCubit>().tableOrderProduct(
            number: 0,
            cartId: context.read<StoreCubit>().storage.cardCreate.call()!,
          );
    }
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, StoreBuildable state) {
    final cubit = context.read<StoreCubit>();

    return Scaffold(
      appBar: AppBar(
        title: "Cart".s(24.sp).w(600).tr(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (USER_TYPE == Constants.ofitsant ||
                USER_TYPE == Constants.kassir)
              state.tableOrder == null
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
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  // Rasm
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      "${Constants.baseUrl}"
                                                      "${state.tableOrder!.cart_items![index].food_image!}",
                                                      width: 80.w,
                                                      height: 80.h,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width: 12), // Bo‘sh joy
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            "${state.tableOrder?.cart_items![index].food_name}"
                                                                .s(14.sp)
                                                                .w(400),
                                                            GestureDetector(
                                                              onTap: () async {
                                                                context
                                                                    .read<
                                                                        StoreCubit>()
                                                                    .deleteCart(
                                                                      deleteCart: state
                                                                          .tableOrder!
                                                                          .cart_items![
                                                                              index]
                                                                          .id
                                                                          .toString(),
                                                                    );
                                                              },
                                                              child: Assets
                                                                  .icons.cancel
                                                                  .svg(),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 4.h),
                                                        Text(
                                                          "Son: ${state.tableOrder!.cart_items![index].quantity!}",
                                                          style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                        SizedBox(height: 13.h),
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
                                                            Padding(
                                                              padding: REdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          16),
                                                              child: Text(
                                                                '${state.tableOrder!.cart_items![index].quantity}',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
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
                                                              child: Assets
                                                                  .images.add
                                                                  .svg(),
                                                            ),
                                                            const Spacer(),
                                                            // Narx
                                                            Text(
                                                              formatCurrency(state
                                                                  .tableOrder!
                                                                  .cart_items![
                                                                      index]
                                                                  .price!),
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 12.h),
                                              const Divider(
                                                  color:
                                                      AppColors.borderTextColor,
                                                  thickness: 1),
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
                        )
            else
              state.tableOrderProduct == null
                  ? SizedBox.shrink()
                  : state.orderLoading
                      ? Center(child: CircularProgressIndicator())
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: REdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  ...List.generate(
                                    state.tableOrderProduct!.cart_item!.length,
                                    (index) {
                                      return Padding(
                                        padding: REdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Rasm
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    "${Constants.baseUrl}"
                                                    "${state.tableOrderProduct!.cart_item![index].product_image!}",
                                                    width: 80.w,
                                                    height: 80.h,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                const SizedBox(
                                                    width: 12), // Bo‘sh joy
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          "${state.tableOrderProduct!.cart_item![index].product_name}"
                                                              .s(14.sp)
                                                              .w(400),
                                                          GestureDetector(
                                                            onTap: () async {
                                                              context
                                                                  .read<
                                                                      StoreCubit>()
                                                                  .deleteCartProduct(
                                                                    deleteCart: state
                                                                        .tableOrderProduct!
                                                                        .cart_item![
                                                                            index]
                                                                        .id
                                                                        .toString(),
                                                                  );
                                                            },
                                                            child: Assets
                                                                .icons.cancel
                                                                .svg(),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 4.h),
                                                      Text(
                                                        "Son: ${state.tableOrderProduct!.cart_item![index].weight}",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      SizedBox(height: 13.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              cubit
                                                                  .removeProduct(
                                                                quantity: state
                                                                    .tableOrderProduct!
                                                                    .cart_item![
                                                                        index]
                                                                    .weight!,
                                                                itemId: state
                                                                    .tableOrderProduct!
                                                                    .cart_item![
                                                                        index]
                                                                    .id!,
                                                              );
                                                            },
                                                            child: Assets
                                                                .images.remove
                                                                .svg(),
                                                          ),
                                                          Padding(
                                                            padding: REdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        16),
                                                            child: Text(
                                                              '${state.tableOrderProduct?.cart_item![index].weight.toString()}',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              cubit.addProduct(
                                                                  quantity: state
                                                                      .tableOrderProduct!
                                                                      .cart_item![
                                                                          index]
                                                                      .weight!,
                                                                  itemId: state
                                                                      .tableOrderProduct!
                                                                      .cart_item![
                                                                          index]
                                                                      .id!);
                                                            },
                                                            child: Assets
                                                                .images.add
                                                                .svg(),
                                                          ),
                                                          const Spacer(),
                                                          Text(
                                                            formatCurrency(state
                                                                .tableOrderProduct!
                                                                .cart_item![
                                                                    index]
                                                                .price
                                                                .toString()),
                                                            style: TextStyle(
                                                                fontSize: 16.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 12.h),
                                            const Divider(
                                                color:
                                                    AppColors.borderTextColor,
                                                thickness: 1),
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
          ],
        ),
      ),
      bottomSheet: BottomSheetCustom(
        loading: state.confirmLoading,
        onTap: () {
          if (USER_TYPE == Constants.kassir ||
              USER_TYPE == Constants.ofitsant) {
            context
                .read<StoreCubit>()
                .orderConfirm(orderId: state.tableOrder!.id!);
          } else {
            context
                .read<StoreCubit>()
                .orderConfirmProduct(orderId: state.tableOrderProduct!.id!);
          }
          CommonToast.snackBar(context,
              message: "Tastiqlandi", color: Colors.green);
        },
        text: 'Continue'.tr(),
      ),
    );
  }
}

String formatCurrency(String input) {
  final numericPart = input.replaceAll(RegExp(r'[^\d]'), '');
  if (numericPart.isEmpty) return input;
  final int number = int.parse(numericPart);
  final formattedNumber =
      NumberFormat('#,###', 'en_US').format(number).replaceAll(',', ' ');
  final currencyPart = input.replaceAll(RegExp(r'\d'), '').trim();
  return "$formattedNumber $currencyPart";
}
