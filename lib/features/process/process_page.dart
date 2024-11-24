import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/common/widgets/custom_button.dart';
import 'package:restaurants_menu/domain/model/table_process/table_process.dart';
import 'package:restaurants_menu/features/process/cubit/process_cubit.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';

@RoutePage()
class ProcessPage extends BasePage<ProcessCubit, ProcessBuildable, ProcessListenable> {
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
                                ? SizedBox.shrink()
                                : const Text(
                                    "Jarayonda",
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                                  ),
                            trailing: Text(
                              formatDate(state.tableProcess[index]!.created_at.toString()),
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Card(
                            color: Color(0xffFFFFFF),
                            child: ItemWidget(
                              price: state.tableProcess[index]!.total_price.toString(),
                              table: state.tableProcess[index]!.cart!.table.toString(),
                              cartItems: state.tableProcess[index]!.cart!.cart_items!,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          cartItems![index].food_name!.s(14.sp).w(400),
                          SizedBox(height: 4.h),
                          "Son :${cartItems![index].quantity!}".toString().s(12.sp).w(400),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                              ),
                              cartItems![index].price!.s(16.sp).w(600)
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
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Jami summa:".s(16.sp).w(600),
              price!.s(20.sp).w(600),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Stol raqami:".s(16.sp).w(600),
              "$table".s(20.sp).w(600),
            ],
          ),
        ),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 8, vertical: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(onTap: () {}, text: "Tahrirlash", size: 14.sp, radius: 8, width: 150.w, height: 44.h),
              CustomButton(
                radius: 8,
                onTap: onTap,
                text: "Tugatish",
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
}
