import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/bottom_sheet_custom.dart';
import 'package:restaurants_menu/common/widgets/common_toast.dart';
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
    // context.read<StoreCubit>().getAllTable();
    context.read<StoreCubit>().tableOrder(
          number: 0,
          cartId: 0,
        );
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
          // actions: [
          //   DropdownButton<int>(
          //     hint: Text("${state.tableNumber}"),
          //     onChanged: (value) {
          //       context.read<StoreCubit>().selectTable(
          //             tableNumber: value!,
          //           );
          //     },
          //     items: state.getTableList.map<DropdownMenuItem<int>>((table) {
          //       return DropdownMenuItem<int>(
          //         onTap: () {
          //           context.read<StoreCubit>().tableOrder(
          //                 number: table["number"],
          //                 cartId: table["cart_id"],
          //               );
          //         },
          //         value: table["number"],
          //         child: Text(
          //           "${table["number"]}",
          //           style: const TextStyle(color: Colors.blue),
          //         ),
          //       );
          //     }).toList(),
          //   )
          // ],
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            // Rasm
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                "${Constants.baseUrl}${state.tableOrder!.cart_items![index].food_image!}",
                                                width: 80.w,
                                                height: 80.h,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(
                                                width: 12), // Bo‘sh joy
                                            // Matn va boshqa elementlar
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      // Ovqat nomi
                                                      "${state.tableOrder?.cart_items![index].price}"
                                                          .s(14.sp)
                                                          .w(400),
                                                      // X belgisi (cancel button)
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
                                                  const SizedBox(height: 4),
                                                  // Son qismi
                                                  Text(
                                                    "Son :${state.tableOrder!.cart_items![index].quantity!}",
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const SizedBox(height: 13),
                                                  // Tugmalar va narx
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      // Minus tugmasi
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
                                                      // Miqdor
                                                      Text(
                                                        '${state.tableOrder!.cart_items![index].quantity}',
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                      // Plus tugmasi
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
                                                      // Narx
                                                      Text(
                                                        formatCurrency(state
                                                            .tableOrder!
                                                            .cart_items![index]
                                                            .price!),
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
                                        const SizedBox(height: 12),
                                        const Divider(
                                            color: AppColors.borderTextColor,
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
                  ),
        bottomSheet: BottomSheetCustom(
          loading: state.confirmLoading,
          onTap: () {
            context
                .read<StoreCubit>()
                .orderConfirm(orderId: state.tableOrder!.id!);
            CommonToast.snackBar(context, message: "Tastiqlandi");
          },
          text: 'Davom etish',
        ),
      );
    }
  }

  String formatCurrency(String input) {
    // Matndan faqat sonni ajratib olish
    final numericPart = input.replaceAll(RegExp(r'[^\d]'), '');

    // Agar son topilmasa, bo'sh string qaytaradi
    if (numericPart.isEmpty) return input;

    // Sonni integerga o'zgartiramiz
    final int number = int.parse(numericPart);

    // Sonni formatlaymiz va valyutani oxirida qo'shamiz
    final formattedNumber =
        NumberFormat('#,###', 'en_US').format(number).replaceAll(',', ' ');
    final currencyPart = input.replaceAll(RegExp(r'\d'), '').trim();

    // Formatlangan raqamni valyuta bilan birlashtirish
    return "$formattedNumber $currencyPart";
  }
}
