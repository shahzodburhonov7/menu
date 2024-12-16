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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  final List<String> items = ['kg', 'dona'];
  String selectedValue = 'kg';

  final int foodId;

  @override
  Widget builder(BuildContext context, VegetablesBuildable state) {
    final cubit = context.read<VegetablesCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
                                  if (state.quantityError.isNotEmpty)
                                    state.quantityError
                                        .s(14.sp)
                                        .c(AppColors.validationRed),
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
                                  Expanded(
                                    child: CommonTextField(
                                      keyboardType: TextInputType.number,
                                      hint: "32 000",
                                      background: AppColors.borderDrown,
                                      borderRadius: 8.r,
                                      prefixIcon: Assets.icons.priceIcon.svg(),
                                    ),
                                  ),
                                  if (state.priceError.isNotEmpty)
                                    state.priceError
                                        .s(14.sp)
                                        .c(AppColors.validationRed),
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
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: CommonTextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatter: [
                                        TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                            final text = newValue.text
                                                .replaceAll('.', '');
                                            if (text.length > 8)
                                              return oldValue;
                                            String formattedText = text;
                                            if (text.length >= 3) {
                                              formattedText =
                                                  '${text.substring(0, 2)}.${text.substring(2)}';
                                            }
                                            if (text.length >= 5) {
                                              formattedText =
                                                  '${text.substring(0, 2)}.${text.substring(2, 4)}.${text.substring(4)}';
                                            }
                                            return TextEditingValue(
                                              text: formattedText,
                                              selection:
                                                  TextSelection.collapsed(
                                                      offset:
                                                          formattedText.length),
                                            );
                                          },
                                        ),
                                      ],
                                      borderRadius: 8.r,
                                      prefixIcon:
                                          Assets.icons.calendarIcon.svg(),
                                      background: AppColors.borderDrown,
                                    ),
                                  ),
                                  if (state.dateError.isNotEmpty)
                                    state.dateError
                                        .s(14.sp)
                                        .c(AppColors.validationRed),
                                  SizedBox(width: 15.w),
                                  Expanded(
                                    child: CommonTextField(
                                      borderRadius: 8.r,
                                      prefixIcon: Assets.icons.timeIcon.svg(),
                                      background: AppColors.borderDrown,
                                      keyboardType: TextInputType.number,
                                      inputFormatter: [
                                        TextInputFormatter.withFunction(
                                          (oldValue, newValue) {
                                            final text = newValue.text
                                                .replaceAll(':', '');
                                            if (text.length > 4)
                                              return oldValue;
                                            String formattedText = text;
                                            if (text.length >= 3) {
                                              formattedText =
                                                  '${text.substring(0, 2)}:${text.substring(2)}';
                                            }
                                            return TextEditingValue(
                                              text: formattedText,
                                              selection:
                                                  TextSelection.collapsed(
                                                offset: formattedText.length,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (state.timeError.isNotEmpty)
                                    state.timeError
                                        .s(14.sp)
                                        .c(AppColors.validationRed),
                                ],
                              )
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
                onTap: () {
                  final res = cubit.validation(
                      quantity: int.parse(countText.text),
                      price: int.parse(priceText.text),
                      date: dateController.text,
                      time: timeController.text);
                  if (res) {
                    cubit.addVegetables(
                      product: foodId,
                      weight: int.parse(countText.text),
                      unit_status: selectedValue,
                      date: dateController.text,
                      time: timeController.text,
                      price: int.parse(priceText.text),
                    );
                  }
                },
                child: Center(
                  child: "Continue".tr().s(20.sp).w(500).c(Colors.white),
                ),
              ),
            )
          : null,
    );
  }
}
