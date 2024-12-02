import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/done_order/widget/home_list.dart';
import 'package:WaiterPro/features/done_order/widget/item_order_done.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/features/done_order/cubit/done_cubit.dart';
import 'package:WaiterPro/features/done_order/cubit/done_state.dart';

@RoutePage()
class DonePage extends BasePage<DoneCubit, DoneBuildable, DoneListenable> {
  DonePage({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  void init(BuildContext context) {
    super.init(context);
    if (USER_TYPE == Constants.ofitsant) {
      context.read<DoneCubit>().orderDoneList();
    } else if (USER_TYPE == Constants.kassir) {
      // context.read<DoneCubit>().confirmList(pageNumber: currentPage);
      context.read<DoneCubit>().getAllOrder();

    }

  }





  String formatDate(String dateTime) {
    final DateTime parsedDate = DateTime.parse(dateTime);
    return DateFormat('dd.MM.yyyy').format(parsedDate);
  }

  @override
  Widget builder(BuildContext context, state) {
    final cubit = context.read<DoneCubit>();

    String formatTime(String rawTime) {
      final parts = rawTime.split('.');
      return parts[0];
    }

    return Scaffold(
        body: Column(
          children: [
            if (USER_TYPE == Constants.ofitsant)
              state.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          state.orderDoneList.length,
                          (index) {
                            return Column(
                              children: [
                                ListTile(
                                  title: index != 0
                                      ? const SizedBox.shrink()
                                      : Text(
                                          "In process".tr(),
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                  trailing: Text(
                                    formatDate(state
                                        .orderDoneList[index].created_at
                                        .toString()),
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Card(
                                  color: const Color(0xffFFFFFF),
                                  child: ItemOrderDone(
                                    price: state
                                        .orderDoneList[index].total_price
                                        .toString(),
                                    table: state
                                        .orderDoneList[index].cart!.table
                                        .toString(),
                                    cartItems: state
                                        .orderDoneList[index].cart!.cart_items!,
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    )
            else if (USER_TYPE == Constants.kassir)
               Padding(
                    padding: REdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                          padding: REdgeInsets.all(24.0),
                          child: HomeList(
                              controller: state.locationController

                          )
                          // CashierAll(
                          //   tableNumber: state.confirmPagination![index]
                          //       .cart!.table_number
                          //       .toString(),
                          //   dateTime: formatTime(
                          //     state.confirmPagination![index].time
                          //         .toString(),
                          //   ),
                          //   dateNumber: formatDate(
                          //     "${state.confirmPagination![index].date.toString()}",
                          //   ),
                          //   waiterName: state.confirmPagination![index]
                          //       .user_full_name
                          //       .toString(),
                          //   priceAll: state
                          //       .confirmPagination![index].total_price
                          //       .toString(),
                          //   carts: state.confirmPagination![index].cart!
                          //       .cart_items,
                          //   onTap: () {
                          //     debugPrint(
                          //         "========${state.confirmPagination![index].id!}");
                          //   },
                          // ),
                          ),
                    ),
                  )
          ],
        ),
    );
  }
}

