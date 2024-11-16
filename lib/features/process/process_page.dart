import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/common_search_field.dart';
import 'package:restaurants_menu/common/widgets/custom_button.dart';
import 'package:restaurants_menu/features/process/cubit/process_cubit.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class ProcessPage
    extends BasePage<ProcessCubit, ProcessBuildable, ProcessListenable> {
  const ProcessPage({super.key});

  @override
  Widget builder(BuildContext context, ProcessBuildable state) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CommonSearchField(
              height: 44.h,
            ),
            SizedBox(height: 32.h,),

            ...List.generate(
              5,
              (index) {
                return const Card(color: Color(0xffFFFFFF),child: ItemWidget(),);
              },
            ),

          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Jarayonda",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          trailing: Text(
            "31.07.2024",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        ...List.generate(
          4,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Assets.images.img6.image(
                              width: 80.w,
                              height: 80.h,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Choyxona osh komplekt".s(14.sp).w(400),
                          SizedBox(height: 4.h),
                          "Son: 2".s(12.sp).w(400),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 157.w,
                              ),
                              "64 000 UZS".s(16.sp).w(600),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const Divider(
                    color: AppColors.borderTextColor,
                    thickness: 1,
                  ),
                ],
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Jami summa:".s(16.sp).w(600),
            "84 000 UZS".s(20.sp).w(600),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            "Stol raqami:".s(16.sp).w(600),
            "25".s(20.sp).w(600),
          ],
        ),
        SizedBox(height: 32.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
                onTap: () {},
                text: "Tahrirlash",
                size: 14.sp,
                radius: 8,
                width: 150.w,
                height: 44.h),
            CustomButton(
              radius: 8,
              onTap: () {},
              text: "Tugatish",
              width: 150.w,
              size: 14.sp,
              height: 44.h,
            ),
          ],
        ),

      ],

    );
  }
}
