import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/common/widgets/custom_container.dart';
import 'package:restaurants_menu/features/settings/cubit/settings_cubit.dart';
import 'package:restaurants_menu/features/settings/cubit/settings_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class SettingsPage extends BasePage<SettingsCubit, SettingsBuildable, SettingsListenable> {
  SettingsPage({super.key});

  String selectedLanguage = 'uz';

  @override
  Widget builder(BuildContext context, SettingsBuildable state) {
    bool isSwitched = true;
    final cubit = context.read<SettingsCubit>();
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
            Container(
              // margin: EdgeInsets.all(16),
              padding: REdgeInsets.symmetric(vertical: 20.h, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          hint: "ssss".s(19),
                          value: selectedLanguage,
                          onChanged: (n) {},
                          items: _languages.map(
                            (bankItem) {
                              return DropdownMenuItem(
                                value: bankItem['code'],
                                child: Row(
                                  children: [
                                    Assets.icons.uzb.svg(),
                                    Text(
                                      "${bankItem['name']}",
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ////////////
            SizedBox(height: 10.h),
            GestureDetector(
              onTap: () {
                context.router.replaceAll([LoginRoute()]);
                cubit.userLogOut();
              },
              child: CustomContainer(
                child: Row(
                  children: [Assets.icons.exit.svg(), SizedBox(width: 11.w), 'Akkauntdan chiqish'.s(12.sp).w(500).c(AppColors.textColor), const Spacer(), Assets.icons.next.svg()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> _languages = [
  {"name": "Uzbek lotin", "icon": "🇺🇿"},
  {"name": "English", "icon": "🇬🇧"},
  {"name": "Russian", "icon": "🇷🇺"},
];
