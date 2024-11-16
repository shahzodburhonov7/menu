import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/features/store/cubit/store_cubit.dart';
import 'package:restaurants_menu/features/store/cubit/store_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class StorePage extends BasePage<StoreCubit, StoreBuildable, StoreListenable> {
  const StorePage({super.key});

  @override
  void init(BuildContext context) {
    context.read<StoreCubit>().getAllTable();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, StoreBuildable state) {
    return state.loading
        ? CircularProgressIndicator()
        : Scaffold(
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
                        // context.read<StoreCubit>().tableOrder(
                        //   number: table["id"],
                        // );
                      },
                      value: table["number"],
                      child: Text(
                        "${table["number"]}",
                        style: TextStyle(color: Colors.blue),
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
            body:
                state.orderLoading
                    ? CircularProgressIndicator()
                    : Padding(
                        padding: REdgeInsets.all(8.0),
                        child: SizedBox(
                          height:
                              state.tableOrder.cart!.cart_items!.length *
                                  100.h,
                          child: Card(
                            child: ListView.separated(
                              itemCount:
                                  state.tableOrder.cart!.cart_items!.length,
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
                                      height: 80,
                                      width: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          "http://crm.repid.uz${state.tableOrder.cart!.cart_items![index].food_image}",
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
                                      "${state.tableOrder.cart!.cart_items![index].price}"
                                          .s(14.sp)
                                          .w(400),
                                      Assets.icons.cancel.svg(),
                                    ],
                                  ),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      "Son: 2".s(12.sp).w(400),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Assets.images.remove.svg(),
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
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const Divider(
                                  color: AppColors.dividerColor,
                                  thickness: 1,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
          );
  }
}
