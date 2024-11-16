import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/custom_container.dart';
import 'package:restaurants_menu/features/settings/cubit/settings_cubit.dart';
import 'package:restaurants_menu/features/settings/cubit/settings_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';


@RoutePage()
class SettingsPage
    extends BasePage<SettingsCubit, SettingsBuildable, SettingsListenable> {
  const SettingsPage({super.key});

  @override
  Widget builder(BuildContext context, SettingsBuildable state) {
    bool isSwitched = true;

    return Scaffold(
      appBar: AppBar(
        title: "Settings".s(22.sp).w(600),
        centerTitle: true,
      ),
      body: Padding(
        padding: REdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomContainer(
              child: Row(
                children: [
                  Assets.icons.bell.svg(),
                  SizedBox(width: 11.w),
                  'Notifications'.s(12.sp).w(500).c(AppColors.textColor),
                  const Spacer(),
                  CupertinoSwitch(
                    value: isSwitched,
                    onChanged: (value) {},
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CustomContainer(
              child: Row(
                children: [
                  Assets.icons.global.svg(),
                  SizedBox(width: 11.w),
                  'Languages'.s(12.sp).w(500).c(AppColors.textColor),
                  const Spacer(),
                  Assets.icons.next.svg()
                ],
              ),
            ),
            SizedBox(height: 10.h),
            CustomContainer(
              child: Row(
                children: [
                  Assets.icons.exit.svg(),
                  SizedBox(width: 11.w),
                  'Akkauntdan chiqish'.s(12.sp).w(500).c(AppColors.textColor),
                  const Spacer(),
                  Assets.icons.next.svg()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
