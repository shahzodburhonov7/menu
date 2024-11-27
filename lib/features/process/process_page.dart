import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/features/process/cubit/process_cubit.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';
import 'package:restaurants_menu/features/process/widgets/process_item_widget.dart';

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
                            color: const Color(0xffFFFFFF),
                            child: ItemWidget(
                              tableProcess: state.tableProcess[index]!,
                              editOnTap: () {},
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
