import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/done_order/widget/cashier_all.dart';
import 'package:WaiterPro/features/done_order/widget/item_order_done.dart';
import 'package:WaiterPro/features/done_order/widget/product_done.dart';
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

  @override
  void init(BuildContext context) {
    super.init(context);
    if (USER_TYPE == Constants.ofitsant) {
      context.read<DoneCubit>().orderDoneList();
    } else if (USER_TYPE == Constants.kassir) {
      context.read<DoneCubit>().confirmList();
    } else if (USER_TYPE == Constants.omborchi) {
      context.read<DoneCubit>().orderDoneListProduct();
    }
  }

  String formatDate(String dateTime) {
    final DateTime parsedDate = DateTime.parse(dateTime);
    return DateFormat('dd.MM.yyyy').format(parsedDate);
  }

  @override
  Widget builder(BuildContext context, state) {
    String formatTime(String rawTime) {
      final parts = rawTime.split('.');
      return parts[0];
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (USER_TYPE == Constants.ofitsant)
              state.loading
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
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
              state.confirmLoading
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          state.confirmAllOrder.length,
                          (index) {
                            return Padding(
                              padding: REdgeInsets.symmetric(vertical: 10),
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: REdgeInsets.all(24.0),
                                  child: CashierAll(
                                    tableNumber: state.confirmAllOrder[index]!
                                        .cart!.table_number
                                        .toString(),
                                    dateTime: formatTime(
                                      state.confirmAllOrder[index]!.time
                                          .toString(),
                                    ),
                                    dateNumber: formatDate(
                                      "${state.confirmAllOrder[index]!.date.toString()}",
                                    ),
                                    waiterName: state
                                        .confirmAllOrder[index]!.user_full_name
                                        .toString(),
                                    priceAll: state
                                        .confirmAllOrder[index]!.total_price
                                        .toString(),
                                    carts: state.confirmAllOrder[index]!.cart
                                        ?.cart_items,
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )
            else if (USER_TYPE == Constants.omborchi)
              state.productLoading
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                        ),
                        Center(
                          child: CircularProgressIndicator(),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          state.productConfirmList.length,
                          (index) {
                            return Padding(
                              padding: REdgeInsets.symmetric(vertical: 10),
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: REdgeInsets.all(24.0),
                                  child: ProductDone(
                                    tableNumber: state
                                        .productConfirmList[index]!.cart!.id
                                        .toString(),
                                    dateTime: formatTime(
                                      state.productConfirmList[index]!.time
                                          .toString(),
                                    ),
                                    dateNumber: formatDate(
                                      "${state.productConfirmList[index]!.date.toString()}",
                                    ),
                                    waiterName: state
                                        .productConfirmList[index]!.full_name
                                        .toString(),
                                    priceAll: state
                                        .productConfirmList[index]!.total_price
                                        .toString(),
                                    carts: state.productConfirmList[index]!
                                        .cart!.cart_item,
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    )
          ],
        ),
      ),
    );
  }
}
