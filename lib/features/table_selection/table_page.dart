import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
import 'package:WaiterPro/common/widgets/custom_button.dart';
import 'package:WaiterPro/common/widgets/custom_container.dart';
import 'package:WaiterPro/features/table_selection/cubit/table_cubit.dart';
import 'package:WaiterPro/features/table_selection/cubit/table_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class TablePage extends BasePage<TableCubit, TableBuildable, TableListenable> {
  const TablePage({
    super.key,
  });

  @override
  void init(BuildContext context) {
    context.read<TableCubit>().getAllTable();
    super.init(context);
  }

  @override
  void listener(BuildContext context, TableListenable state) {
    switch (state.effect) {
      case null:
        break;
      case TableEffect.success:
        context.router.push(
          FoodsRoute(),
        );
      case TableEffect.error:
        CommonToast.snackBar(
          context,
          message: "The table is occupied".tr(),
        );
    }
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, TableBuildable state) {
    final cubit = context.read<TableCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Assets.icons.back.svg(),
        ),
        title: "Table".s(24.sp).w(600).tr(),
        centerTitle: true,
        actions: [
          Padding(
            padding: REdgeInsets.only(right: 10),
            child: Assets.icons.notifaction.svg(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Choose a table number".s(18.sp).w(700).tr(),
              SizedBox(height: 20.h),
              "Table number".s(14.sp).w(500).tr(),
              SizedBox(height: 20.h),
              CustomContainer(
                child: Row(
                  children: [
                    "${state.table}".toString().s(16.sp).w(500).c(AppColors.borderColor),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height*0.3,
                  child: CupertinoPicker(
                    itemExtent: 50.h,
                    onSelectedItemChanged: (index) {
                      cubit.setTable(
                        state.getTableList.elementAt(index)["number"],
                        state.getTableList.elementAt(index)["id"],
                      );
                    },
                    children: List.generate(
                      state.getTableList.length,
                      (index) {
                        return Center(
                          child: Text(
                            state.getTableList.elementAt(index)["number"].toString(),
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: state.getTableList.elementAt(index)["is_busy"] ? AppColors.tabColor : AppColors.textColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomButton(
                loading: state.postTable,
                onTap: () {
                  debugPrint("Debug1");
                  cubit.postChose(id: state.tableId);
                  cubit.tableNumber(
                    tableNumber: state.table,
                  );
                },
                text: "Confirmation".tr(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
