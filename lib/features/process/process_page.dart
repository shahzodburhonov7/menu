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

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget builder(BuildContext context, ProcessBuildable state) {
    final cubit = context.read<ProcessCubit>();
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
            SizedBox(height: 5,),
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
                                  price: state.tableProcess[index]!.total_price
                                      .toString(),
                                  table: state.tableProcess[index]!.cart!.table
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
                  ),
          ],
        ),
      ),
    );
  }
}

