import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/common_text_field.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
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

  @override
  void listener(BuildContext context, VegetablesListenable state) {
    switch (state.effect) {
      case null:
        break;
      case VegetablesEffect.error:
        CommonToast.snackBar(
          context,
          message: 'Nimadir xato ketti',
        );
      case VegetablesEffect.success:
        context.router.push(
          FoodsRoute(),
        );
    }
    super.listener(context, state);
  }

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
                                    child: SizedBox(
                                      height: 55.h,
                                      child: CommonTextField(
                                        onChanged: (value) {
                                          cubit.clearError(
                                              clearQuantityError: true);
                                        },
                                        enabledBorderColor:
                                            state.priceError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        focusedBorderColor:
                                            state.priceError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        hint: "100",
                                        controller: countText,
                                        keyboardType: TextInputType.number,
                                        background: AppColors.borderDrown,
                                        borderRadius: 8.r,
                                        inputFormatter: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                        ],
                                        prefixIcon:
                                            Assets.icons.storeCount.svg(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 55.h,
                                    padding:
                                        REdgeInsets.symmetric(horizontal: 16),
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
                                            child: Text(
                                              value,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            context
                                                .read<VegetablesCubit>()
                                                .changeDropdownValue(
                                                  newValue,
                                                );
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
                                    child: SizedBox(
                                      height: 54.h,
                                      child: CommonTextField(
                                        onChanged: (value) {
                                          cubit.clearError(
                                              clearPriceError: true);
                                        },
                                        enabledBorderColor:
                                            state.priceError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        focusedBorderColor:
                                            state.priceError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        controller: priceText,
                                        keyboardType: TextInputType.number,
                                        hint: "32 000",
                                        background: AppColors.borderDrown,
                                        borderRadius: 8.r,
                                        inputFormatter: [
                                          TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                              String text = newValue.text
                                                  .replaceAll(
                                                      RegExp(r'\D'), '');
                                              if (text.length <= 3) {
                                                return newValue;
                                              }
                                              final StringBuffer buffer =
                                                  StringBuffer();
                                              int count = 0;

                                              for (int i = text.length - 1;
                                                  i >= 0;
                                                  i--) {
                                                count++;
                                                buffer.write(text[i]);
                                                if (count % 3 == 0 && i != 0) {
                                                  buffer.write(' ');
                                                }
                                              }

                                              String formattedText = buffer
                                                  .toString()
                                                  .split('')
                                                  .reversed
                                                  .join('');
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
                                        prefixIcon:
                                            Assets.icons.priceIcon.svg(),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      height: 55.h,
                                      padding:
                                          REdgeInsets.symmetric(horizontal: 32),
                                      decoration: BoxDecoration(
                                        color: AppColors.borderDrown,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: Center(
                                        child: "UZS".s(14.sp).w(400),
                                      )),
                                ],
                              ),
                              SizedBox(height: 24.h),
                              "Qabul qilingan vaqt".s(14.sp).w(400),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 55.h,

                                      child: CommonTextField(
                                        hint: "Sana",
                                        onChanged: (value) {
                                          cubit.clearError(clearDateError: true);
                                        },
                                        enabledBorderColor:
                                            state.dateError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        focusedBorderColor:
                                            state.dateError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        controller: dateController,

                                        keyboardType: TextInputType.number,
                                        inputFormatter: [
                                          TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                              final text = newValue.text
                                                  .replaceAll('-', '');

                                              if (text.length > 8)
                                                return oldValue;

                                              String formattedText = text;

                                              if (text.length >= 5) {
                                                formattedText =
                                                    '${text.substring(0, 4)}-${text.substring(4, 6)}';
                                              }

                                              if (text.length >= 7) {
                                                int month = int.tryParse(
                                                        text.substring(4, 6)) ??
                                                    0;
                                                if (month > 12) {
                                                  formattedText =
                                                      '${text.substring(0, 4)}-12-${text.substring(6)}';
                                                } else {
                                                  formattedText =
                                                      '${text.substring(0, 4)}-${text.substring(4, 6)}-${text.substring(6)}';
                                                }
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
                                  ),
                                  SizedBox(width: 15.w),
                                  Expanded(
                                    child: SizedBox(
                                      height: 55.h,
                                      child: CommonTextField(
                                        hint: "Vaqt",
                                        onChanged: (value) {
                                          cubit.clearError(clearTimeError: true);
                                        },
                                        enabledBorderColor:
                                            state.timeError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        focusedBorderColor:
                                            state.timeError.isNotEmpty
                                                ? AppColors.validationRed
                                                : AppColors.borderDrown,
                                        borderRadius: 8.r,
                                        controller: timeController,
                                        prefixIcon: Assets.icons.timeIcon.svg(),
                                        background: AppColors.borderDrown,
                                        keyboardType: TextInputType.number,
                                        inputFormatter: [
                                          TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                              final text = newValue.text
                                                  .replaceAll('-', '');
                                              if (text.length > 4)
                                                return oldValue;

                                              String formattedText = text;
                                              if (text.length >= 3) {
                                                formattedText =
                                                    '${text.substring(0, 2)}-${text.substring(2)}';
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
                                      ),
                                    ),
                                  ),
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
                    quantity: countText.text,
                    price: priceText.text,
                    date: dateController.text,
                    time: timeController.text,
                  );

                  if (res) {
                    int? weight = int.tryParse(countText.text);
                    int? price = int.tryParse(
                      priceText.text.replaceAll(' ', ''),
                    );
                    if (weight != null && price != null) {
                      cubit.addVegetables(
                        product: foodId,
                        weight: weight,
                        unit_status: selectedValue,
                        date: dateController.text,
                        time: timeController.text,
                        price: price,
                      );
                    } else {
                      print("Invalid weight or price");
                    }
                  } else {
                    print("Validation failed. Please check your input.");
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
