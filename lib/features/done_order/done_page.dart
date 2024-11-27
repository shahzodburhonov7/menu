import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/domain/model/order_done_list/order_done_list.dart';
import 'package:restaurants_menu/features/done_order/cubit/done_cubit.dart';
import 'package:restaurants_menu/features/done_order/cubit/done_state.dart';

@RoutePage()
class DonePage extends BasePage<DoneCubit, DoneBuildable, DoneListenable> {
  const DonePage({super.key});

  @override
  void init(BuildContext context) {
    context.read<DoneCubit>().orderDoneList();
    super.init(context);
  }

  String formatDate(String dateTime) {
    final DateTime parsedDate = DateTime.parse(dateTime);
    return DateFormat('dd.MM.yyyy').format(parsedDate);
  }

  @override
  Widget builder(BuildContext context, state) {
    return state.loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  ...List.generate(
                    state.orderDoneList.length,
                    (index) {
                      return Column(
                        children: [
                          ListTile(
                            title: index != 0
                                ? const SizedBox.shrink()
                                : Text(
                                    "Bajarilgan",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                            trailing: Text(
                              formatDate(state.orderDoneList[index].created_at
                                  .toString()),
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Card(
                            color: const Color(0xffFFFFFF),
                            child: ItemOrderDone(
                              price: state.orderDoneList[index].total_price
                                  .toString(),
                              table: state.orderDoneList[index].cart!.table
                                  .toString(),
                              cartItems:
                                  state.orderDoneList[index].cart!.cart_items!,
                              onTap: () {},
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
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
class ItemOrderDone extends StatelessWidget {
  ItemOrderDone({
    super.key,
    this.cartItems,
    this.price,
    this.table,
    required this.onTap,
  });

  final List<CartItem>? cartItems;
  final String? price;
  final String? table;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          cartItems!.length,
          (index) {
            return Padding(
              padding: REdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "${Constants.baseUrl}${cartItems![index].food_image!}",
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
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            cartItems![index].food_name!.s(14.sp).w(400),
                            SizedBox(height: 4.h),
                            "Son: ${cartItems![index].quantity!}"
                                .toString()
                                .s(12.sp)
                                .w(400),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  formatCurrency(cartItems![index].price!),
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
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
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Jami summa:".s(16.sp).w(600),
              Text(
                formatCurrency(price!),
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Stol raqami:".s(16.sp).w(600),
              "$table".s(20.sp).w(600),
            ],
          ),
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
