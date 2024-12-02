import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/process/widgets/cashier_widget.dart';
import 'package:WaiterPro/features/process/widgets/process_item_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/common_search_field.dart';
import 'package:WaiterPro/features/process/cubit/process_cubit.dart';
import 'package:WaiterPro/features/process/cubit/process_state.dart';

@RoutePage()
class ProcessPage
    extends BasePage<ProcessCubit, ProcessBuildable, ProcessListenable> {
  ProcessPage({super.key});

  @override
  void init(BuildContext context) {
    if (USER_TYPE == Constants.ofitsant) {
      context.read<ProcessCubit>().processList();
    } else if (USER_TYPE == Constants.kassir) {
      context.read<ProcessCubit>().confirmList();
    }
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

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget builder(BuildContext context, ProcessBuildable state) {
    final cubit = context.read<ProcessCubit>();
    String formatTime(String rawTime) {
      final parts = rawTime.split('.');
      return parts[0];
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonSearchField(
              textInputType: TextInputType.number,
              onChanged: (value) {
                context
                    .read<ProcessCubit>()
                    .tableProcessNumber(tableId: int.parse(value));
              },
              controller: textEditingController,
              height: 44.h,
            ),
            SizedBox(
              height: 5,
            ),
            if (USER_TYPE == Constants.ofitsant)
              state.loading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
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
                                    formatDate(state
                                        .tableProcess[index]!.created_at
                                        .toString()),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Card(
                                  color: const Color(0xffFFFFFF),
                                  child: ItemWidget(
                                    price: state
                                        .tableProcess[index]!.total_price
                                        .toString(),
                                    table: state
                                        .tableProcess[index]!.cart!.table
                                        .toString(),
                                    cartItems: state
                                        .tableProcess[index]!.cart!.cart_items!,
                                    editOnTap: () {
                                      cubit.storage.cardId.set(
                                          state.tableProcess[index]!.cart!.id!);
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
                    )
            else if (USER_TYPE == Constants.kassir)
              state.confirmLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        ...List.generate(
                          state.confirmAll.length,
                          (index) {
                            return Padding(
                              padding: REdgeInsets.symmetric(vertical: 10),
                              child: Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: REdgeInsets.all(24.0),
                                  child: CashierWidget(
                                    tableNumber: state
                                        .confirmAll[index]!.cart!.table_number
                                        .toString(),
                                    dateTime: formatTime(
                                      state.confirmAll[index]!.time.toString(),
                                    ),
                                    dateNumber: formatDate(
                                      "${state.confirmAll[index]!.date.toString()}",
                                    ),
                                    waiterName: state
                                        .confirmAll[index]!.user_full_name
                                        .toString(),
                                    priceAll: state
                                        .confirmAll[index]!.total_price
                                        .toString(),
                                    carts: state
                                        .confirmAll[index]!.cart!.cart_items!,
                                    onTap: () {
                                      cubit.confirmOrder(
                                        orderId: state.confirmAll[index]!.id!,
                                      );
                                      debugPrint(
                                          "========${state.confirmAll[index]!.id!}");
                                    },
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

