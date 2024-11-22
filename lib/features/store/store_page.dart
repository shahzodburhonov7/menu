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
    if (state.loading) {
      return const CircularProgressIndicator();
    } else {
      return Scaffold(
        appBar: AppBar(
          title: "Savat".s(24.sp).w(600),
          centerTitle: true,
          actions: [
            DropdownButton<int>(
              hint: Text("00"),
              onChanged: (value) {
                context.read<StoreCubit>().selectTable(
                      tableNumber: value!,
                    );
              },
              items: state.getTableList.map<DropdownMenuItem<int>>((table) {
                return DropdownMenuItem<int>(

                  onTap: () {
                    context.read<StoreCubit>().tableOrder(
                          number: table["cart_id"],
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
            ? SizedBox.shrink()
            : state.orderLoading
                ? const CircularProgressIndicator()
                : Padding(
                    padding: REdgeInsets.all(8.0),
                    child: SizedBox(
                      height: (state.tableOrder?.cart_items!.length)! * 100.h,
                      child: Card(
                        child: ListView.separated(
                          itemCount: (state.tableOrder?.cart_items!)!.length,
                          itemBuilder: (
                            context,
                            index,
                          ) {
                            return ListTile(
                              leading: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minWidth: 100.w,
                                  minHeight: 100.h,
                                  maxWidth: 100.w,
                                  maxHeight: 100.h,
                                ),
                                child: SizedBox(
                                  height: 80.h,
                                  width: 80.w,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      "${Constants.baseUrl}${state.tableOrder?.cart_items![index].food_image}",
                                      width: 100.w,
                                      height: 100.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "${state.tableOrder?.cart_items![index].price}"
                                      .s(14.sp)
                                      .w(400),
                                  GestureDetector(
                                    child: Assets.icons.cancel.svg(),
                                    onTap: () {
                                      context.read<StoreCubit>().deleteCart(
                                          deleteCart: state
                                              .tableOrder!.cart_items![index].id
                                              .toString());
                                      debugPrint(
                                        "============++++++++++++++++++ =>${state.tableOrder!.cart_items![index].id!}",
                                      );
                                    },
                                  ),
                                ],
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  "Son: 2".s(12.sp).w(400),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                debugPrint(state.tableNumber
                                                    .toString());
                                                debugPrint(
                                                  state.getTableList
                                                      .elementAt(index)['id']
                                                      .toString(),
                                                );
                                              },
                                              child:
                                                  Assets.images.remove.svg()),
                                          Padding(
                                            padding: REdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: '2'.s(12.sp).w(400),
                                          ),
                                          Assets.images.add.svg(),
                                        ],
                                      ),
                                      // "${item.price}".s(16.sp).w(600),
                                    ],
                                  ),
                                ],
                              ),
                              onTap: () {},
                              onLongPress: () {},
                              dense: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider(
                              color: AppColors.dividerColor,
                              thickness: 1,
                            );
                          },
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
