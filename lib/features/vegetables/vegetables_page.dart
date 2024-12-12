import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/common_text_field.dart';
import 'package:WaiterPro/features/vegetables/cubit/vegetables_cubit.dart';
import 'package:WaiterPro/features/vegetables/cubit/vegetables_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class VegetablesPage extends BasePage<VegetablesCubit, VegetablesBuildable,
    VegetablesListenable> {
  VegetablesPage(this.foodId, {super.key});

  final TextEditingController countText = TextEditingController();
  final TextEditingController priceText = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  @override
  void init(BuildContext context) {
    context.read<VegetablesCubit>().getFoodInfo(id: foodId);
    super.init(context);
  }

  final List<String> items = ['kg', 'tona'];
  String selectedValue = 'kg';

  final int foodId;

  @override
  Widget builder(BuildContext context, VegetablesBuildable state) {
    final cubit = context.read<VegetablesCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true, // Bu parametrni qo'shish kerak

      body: state.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                Image.network(
                  "${Constants.baseUrl}" "${state.vegetablesInfo?.image}",
                  height: 319.h,
                  width: 393.w,
                  fit: BoxFit.cover,
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: REdgeInsets.only(top: 79, left: 20),
                        child: InkWell(
                          onTap: () {
                            context.router.pop();
                          },
                          child: Assets.icons.backAbout.svg(),
                        ),
                      ),
                      SizedBox(height: 181.h),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: REdgeInsets.symmetric(
                              horizontal: 29, vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  "${state.vegetablesInfo?.name_uz}"
                                      .s(20.sp)
                                      .w(500),
                                ],
                              ),
                              SizedBox(
                                height: 23.h,
                              ),
                              "Mahsulot vazni".s(14.sp).w(400),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: CommonTextField(
                                      hint: "100",
                                      keyboardType: TextInputType.number,
                                      background: AppColors.borderDrown,
                                      borderRadius: 8.r,
                                      prefixIcon: Assets.icons.storeCount.svg(),
                                    ),
                                  ),
                                  Container(
                                    height: 55.h,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: AppColors.borderDrown,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        dropdownColor: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        value: selectedValue,
                                        icon: Assets.icons.drowIcon.svg(),
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                        items: items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            context
                                                .read<VegetablesCubit>()
                                                .changeDropdownValue(newValue);
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              "Mahsulot narxi".s(14.sp).w(400),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  TextField(),
                                  Expanded(
                                    child: CommonTextField(

                                      keyboardType: TextInputType.number,
                                      hint: "32 000",
                                      background: AppColors.borderDrown,
                                      borderRadius: 8.r,
                                      prefixIcon: Assets.icons.priceIcon.svg(),
                                    ),
                                  ),
                                  Container(
                                    height: 55.h,
                                    padding:
                                        REdgeInsets.symmetric(horizontal: 30),
                                    decoration: BoxDecoration(
                                      color: AppColors.borderDrown,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        dropdownColor: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0.r),
                                        value: selectedValue,
                                        icon: SizedBox.shrink(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        items: items.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text("UZS"),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              "Qabul qilingan vaqt".s(14.sp).w(400),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: AppColors.borderDrown,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          showCupertinoModalPopup(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                Container(
                                              width: double.infinity,
                                              padding: EdgeInsets.all(16),
                                              height: 150,
                                              child: CupertinoDatePicker(
                                                backgroundColor: Colors.white,
                                                onDateTimeChanged:
                                                    (DateTime newTime) {
                                                  context
                                                      .read<VegetablesCubit>()
                                                      .updateSelectedDate(
                                                          newTime);
                                                },
                                                use24hFormat: true,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Assets.icons.calendarIcon.svg(),
                                            "${state.selectedDate?.month}-${state.selectedDate?.day}-${state.selectedDate?.year}"
                                                .s(16.sp)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () async {
                                        TimeOfDay? pickedTime =
                                            await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.now(),
                                        );

                                        if (pickedTime != null) {
                                          // Vaqtni kerakli formatga o'tkazish
                                          String formattedTime =
                                              pickedTime.format(context);
                                          // Formatted vaqtni text fieldda ko'rsatish
                                          timeController.text = formattedTime;
                                        }
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: AppColors.borderDrown,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Assets.icons.timeIcon.svg(),
                                            "${state.selectedDate?.month}"
                                                .s(16.sp)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      bottomSheet: MediaQuery.of(context).viewInsets.bottom == 0
          ? Container(
              width: double.infinity,
              color: AppColors.splashColor,
              height: 50.h,
              child: GestureDetector(
                onTap: () {},
              ),
            )
          : null,
    );
  }
}
