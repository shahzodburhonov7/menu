import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/common/widgets/custom_button.dart';
import 'package:restaurants_menu/domain/model/table_process/table_process.dart';
import 'package:restaurants_menu/features/process/cubit/process_cubit.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';

@RoutePage()
class ProcessPage
    extends BasePage<ProcessCubit, ProcessBuildable, ProcessListenable> {
  const ProcessPage({super.key});

  @override
  void init(BuildContext context) {
    context.read<ProcessCubit>().processList();
    super.init(context);
  }

  String formatDate(String dateTime) {
    final DateTime parsedDate = DateTime.parse(dateTime);
    return DateFormat('dd.MM.yyyy').format(parsedDate);
  }

  @override
  void onFocusGained(BuildContext context) {
    context.read<ProcessCubit>().processList();
    super.onFocusGained(context);
  }

  @override
  Widget builder(BuildContext context, ProcessBuildable state) {


    final cubit = context.read<ProcessCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      body: state.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  CommonSearchField(
                    textInputType: TextInputType.number,
                    onChanged: (value) {
                      context.read<ProcessCubit>().tableProcessNumber(tableId: int.parse(value));
                    },
                    controller: TextEditingController(),
                    height: 44.h,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  ...List.generate(
                    state.tableProcess.length,
                    (index) {
                      return Column(
                        children: [
                          ListTile(
                            title: index != 0
                                ? const SizedBox.shrink()
                                : Text(
                                    "In process".tr(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                            trailing: Text(
                              formatDate(state.tableProcess[index]!.created_at
                                  .toString()),
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Card(
                            color: const Color(0xffFFFFFF),
                            child: ItemWidget(
                              price: state.tableProcess[index]!.total_price
                                  .toString(),
                              table: state.tableProcess[index]!.cart!.table
                                  .toString(),
                              cartItems:
                                  state.tableProcess[index]!.cart!.cart_items!,
                              editOnTap: () {
                                cubit.storage.cardId
                                    .set(state.tableProcess[index]!.cart!.id!);
                                context.router.pushAndPopUntil(
                                  FoodsRoute(),
                                  predicate: (context) => false,
                                );
                              },
                              onTap: () {
                                cubit.orderDone(
                                  orderId: state.tableProcess[index]!.id!,
                                );
                              },
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

class ItemWidget extends StatelessWidget {
  ItemWidget({
    super.key,
    this.cartItems,
    this.price,
    this.table,
    required this.onTap,
    required this.editOnTap,
  });

  final List<CartItem>? cartItems;
  final String? price;
  final String? table;
  final void Function() onTap;
  final Function() editOnTap;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        ...List.generate(
          cartItems!.length,
          (index) {
            return Padding(
              padding: REdgeInsets.all(8.0),
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

                            cartItems![index].food_name!.s(14.sp).w(400)

                            ,
                            SizedBox(height: 4.h),
                            Row(
                              children: [
                                "Number".s(12.sp).w(400).tr(),
                                ": ${cartItems![index].quantity!}"
                                    .toString()
                                    .s(12.sp)
                                    .w(400),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              "Total amount".s(16.sp).w(600).tr(),
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
              "Table number".s(16.sp).w(600).tr(),
              "$table".s(20.sp).w(600),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 10, vertical: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  onTap: editOnTap,
                  text: "Edit".tr(),
                  size: 14.sp,
                  radius: 8,
                  color: const Color(0xFF2C2C3D),
                  backgroundColor: Colors.white,
                  width: 150.w,
                  height: 44.h),
              CustomButton(
                radius: 8,
                onTap: onTap,
                text: "Finish".tr(),
                width: 150.w,
                size: 14.sp,
                height: 44.h,
              ),
            ],
          ),
        ),
      ],
    );
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
}
