import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/common_text_field.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_cubit.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_state.dart';
import 'package:WaiterPro/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProductAddPage extends BasePage<ProductAddCubit, ProductAddBuildable,
    ProductAddListenable> {
  const ProductAddPage({super.key});

  @override
  Widget builder(BuildContext context, ProductAddBuildable state) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final containerWidth = screenWidth * (353 / 375);
    final containerHeight = screenHeight * (100 / 812);
    return Scaffold(
      appBar: AppBar(
        title: "Mahsulot qo’shish".s(22.sp).w(600),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(onTap: (){
            context.popRoute();
          },child: Assets.icons.back.svg()),
        ),

      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Yangi mahsulot".s(18).w(600),
            SizedBox(height: 20.h),

            "Mahsulot turi".s(14).w(400).c(AppColors.black).tr(),
            SizedBox(height: 6.h),
            CommonTextField(
              onChanged: (v) {},
              background: AppColors.white,
              hint: "Mahsulot",
              enabledBorderColor: AppColors.borderColor,
            ),
            SizedBox(height: 22.h),
            "Mahsulot nomi".s(14.sp).w(400).c(AppColors.black).tr(),
            SizedBox(height: 6.h),
            CommonTextField(
              onChanged: (v) {},
              hint: "Password".tr(),
              background: AppColors.white,
              enabledBorderColor: AppColors.borderColor,
            ),
            SizedBox(height: 20),
            DottedBorder(
              borderType: BorderType.RRect,
              dashPattern: [6, 3],
              radius: Radius.circular(12),
              color: Colors.grey,
              strokeWidth: 0.5,
              child: Container(
                width: containerWidth,
                height: containerHeight,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Assets.images.upload.svg(),
                    SizedBox(width: 15.w),
                      "Upload photo".s(12).w(400),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
