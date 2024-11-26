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
class SettingsPage
    extends BasePage<SettingsCubit, SettingsBuildable, SettingsListenable> {
  SettingsPage({super.key});

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
                    onChanged: (value) {

                    },
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: cubit.toggleExpanded, // Dropdownni ochish/yopish
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.language, color: Colors.grey[800]),
                            SizedBox(width: 8),
                            Text(
                              "Languages",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          state.isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: Colors.grey[800],
                        ),
                      ],
                    ),
                  ),
                  if (state.isExpanded)
                    ..._languages.map((language) {
                      final isSelected =
                          language["name"] == state.selectedLanguage;
                      return InkWell(
                        onTap: () {
                          cubit.selectLanguage(language["name"]!); // Tanlash
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.grey[800]
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Text(
                                language["icon"]!,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(width: 8),
                              Text(
                                language["name"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                  isSelected ? Colors.white : Colors.black,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                ],
              ),
            ),

            SizedBox(height: 10.h),
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
                    'Akkauntdan chiqish'.s(12.sp).w(500).c(AppColors.textColor),
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

final List<Map<String, String>> _languages = [
  {"name": "Uzbek lotin", "icon": "🇺🇿"},
  {"name": "English", "icon": "🇬🇧"},
  {"name": "Russian", "icon": "🇷🇺"},
];
