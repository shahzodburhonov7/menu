import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
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
import 'package:WaiterPro/common/widgets/custom_container.dart';
import 'package:WaiterPro/features/settings/cubit/settings_cubit.dart';
import 'package:WaiterPro/features/settings/cubit/settings_state.dart';
import 'package:WaiterPro/features/settings/widget/custom_language.dart';
import 'package:WaiterPro/features/settings/widget/settings_widget.dart';
import 'package:WaiterPro/gen/assets.gen.dart';

@RoutePage()
class SettingsPage
    extends BasePage<SettingsCubit, SettingsBuildable, SettingsListenable> {
  SettingsPage({super.key});

  @override
  Widget builder(BuildContext context, SettingsBuildable state) {
    bool isSwitched = true;
    final cubit = context.read<SettingsCubit>();
    return Scaffold(
      appBar: AppBar(
        title: "Settings".tr().s(22.sp).w(600),
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
                  'Notifications'.tr().s(12.sp).w(500).c(
                        AppColors.textColor,
                      ),
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
            GestureDetector(
              onTap: cubit.toggleLanguages,
              child: SettingsWidget(
                title: "languages".tr(),
                icon: Assets.icons.global.svg(),
                trailing: GestureDetector(
                  child: state.isToggled
                      ? Assets.icons.arrowUp.svg()
                      : Assets.icons.arrowDown.svg(),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            state.isToggled
                ? const Center()
                : CustomLanguagesWidget(
                    profileContext: context,
                  ),
            SizedBox(height: 10.h),
            if (USER_TYPE == Constants.omborchi)
              GestureDetector(
                onTap: () {
                  context.router.push(
                    ProductAddRoute(),
                  );
                },
                child: CustomContainer(
                  child: Row(
                    children: [
                      Assets.images.box.svg(),
                      SizedBox(width: 11.w),
                      'Mahsulot qo’shish'
                          .tr()
                          .s(12.sp)
                          .w(500)
                          .c(AppColors.textColor),
                      const Spacer(),
                      Assets.icons.next.svg()
                    ],
                  ),
                ),
              ),
            SizedBox(height: 12.h),
            GestureDetector(
              onTap: () {
                context.router.replaceAll([LoginRoute()]);
                cubit.userLogOut();
              },
              child: CustomContainer(
                child: Row(
                  children: [
                    Assets.icons.exit.svg(),
                    SizedBox(width: 11.w),
                    'Log out'.tr().s(12.sp).w(500).c(AppColors.textColor),
                    const Spacer(),
                    Assets.icons.next.svg()
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
