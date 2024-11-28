import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
import 'package:WaiterPro/features/about_page/cubit/about_cubit.dart';
import 'package:WaiterPro/features/about_page/cubit/about_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class AboutPage extends BasePage<AboutCubit, AboutBuildable, AboutListenable> {
  const AboutPage({required this.foodId, super.key});

  @override
  void init(BuildContext context) {
    context.read<AboutCubit>().getFoodInfo(id: foodId);
    super.init(context);
  }

  final int foodId;

  @override
  Widget builder(BuildContext context, AboutBuildable state) {
    final cubit = context.read<AboutCubit>();
    final bool isUzbek = context.locale.languageCode == "uz";
    final bool isRussian = context.locale.languageCode == "ru";
    return Scaffold(
      body: state.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                Image.network(
                  "${state.foodInfo!.image}",
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
                        height: 80.h,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: REdgeInsets.all(24.0),
                          child: Row(
                            children: [
                              "${state.foodInfo?.name_uz}".s(20.sp).w(500),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: REdgeInsets.only(left: 27, right: 29),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              formatCurrency(
                                "${state.foodInfo?.price} uzs",
                              ),
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.appColorOrange),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    cubit.remove();
                                  },
                                  child: Assets.images.remove
                                      .svg(width: 24.w, height: 24.h),
                                ),
                                Padding(
                                  padding:
                                      REdgeInsets.symmetric(horizontal: 16),
                                  child: "${state.count}"
                                      .s(14.sp)
                                      .w(400)
                                      .c(AppColors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    cubit.add();
                                  },
                                  child: Assets.images.add
                                      .svg(width: 24.w, height: 24.h),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: REdgeInsets.only(left: 20, top: 40),
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      AppColors.elevatedButtonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )),
                              child: "About the product"
                                  .s(14.sp)
                                  .c(AppColors.appColorOrange)
                                  .w(600)
                                  .tr(),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            "Composition"
                                .s(14.sp)
                                .w(400)
                                .c(AppColors.hintTextColor)
                                .tr(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: REdgeInsets.only(
                            left: 20, top: 20, right: 70, bottom: 20),
                        child: isUzbek
                            ? "${state.foodInfo?.food_info_uz}"
                                .s(14.sp)
                                .w(400)
                                .c(AppColors.hintTextColor)
                            : isRussian
                                ? "${state.foodInfo?.food_info_uz}"
                                    .s(14.sp)
                                    .w(400)
                                    .c(AppColors.hintTextColor)
                                : "${state.foodInfo?.food_info_uz}"
                                    .s(14.sp)
                                    .w(400)
                                    .c(AppColors.hintTextColor)
                                    .s(14.sp)
                                    .w(400)
                                    .c(AppColors.hintTextColor),
                      ),
                      const Divider(
                        color: AppColors.dividerColor,
                        thickness: 5,
                        indent: 9,
                        endIndent: 9,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                    ],
                  ),
                ),
              ],
            ),
      floatingActionButton: Padding(
        padding: REdgeInsets.only(left: 55, right: 55, bottom: 34),
        child: SizedBox(
          height: 44.h,
          width: 283.w,
          child: ElevatedButton(
            onPressed: () {
              if (state.count != 0) {
                cubit.postOrder(
                  foodId: state.foodInfo!.id!,
                  quantity: state.count,
                );
                context.router.pop();
              } else {
                CommonToast.snackBar(
                  context,
                  message: "soni kiriting",
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: "Add to Cart".s(14.sp).w(600).c(AppColors.white).tr(),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  String formatCurrency(String input) {
    final numericPart = input.replaceAll(RegExp(r'[^\d]'), '');
    if (numericPart.isEmpty) return input;
    final int number = int.parse(numericPart);
    final formattedNumber =
        NumberFormat('#,###', 'en_US').format(number).replaceAll(',', ' ');
    final currencyPart = input.replaceAll(RegExp(r'\d'), '').trim();
    return "$formattedNumber $currencyPart";
  }
}
