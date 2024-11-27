import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/features/settings/widget/language.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

class CustomLanguagesWidget extends StatelessWidget {
  const CustomLanguagesWidget({
    super.key,
    required this.profileContext,
  });

  final BuildContext profileContext;

  @override
  Widget build(BuildContext context) {
    final bool isUzbek = context.locale.languageCode == "uz";
    final bool isEnglish = context.locale.languageCode == "en";
    final bool isRussian = context.locale.languageCode == "ru";

    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: 18.h,
      ),
      height: 216.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 30.r,
            offset: const Offset(0, 4),
            color: AppColors.fullBlack.withOpacity(0.04),
          ),
        ],
      ),
      child: Column(
        children: [
          LanguageContainer(
            color: isUzbek
                ? AppColors.btnSend.withOpacity(0.8)
                : AppColors.solitudeWhite,
            textColor: isUzbek ? AppColors.whiteText : AppColors.fullBlack,
            text: "Uzbek".tr(),
            icon: Assets.icons.uzb.svg(),
            onTap: () {
              profileContext.setLocale(
                const Locale("uz", "UZ"),
              );
            },
          ),
          SizedBox(height: 12.h),
          LanguageContainer(
            onTap: () {
              profileContext.setLocale(
                const Locale("en", "EN"),
              );
            },
            color: isEnglish
                ? AppColors.btnSend.withOpacity(0.8)
                : AppColors.solitudeWhite,
            textColor: isEnglish ? AppColors.whiteText : AppColors.fullBlack,
            text: 'English'.tr(),
            icon: Assets.icons.eng.image(),
          ),
          SizedBox(height: 12.h),
          LanguageContainer(
            onTap: () {
              profileContext.setLocale(
                const Locale("ru", "RU"),
              );
            },
            color: isRussian
                ? AppColors.btnSend.withOpacity(0.8)
                : AppColors.solitudeWhite,
            textColor: isRussian ? AppColors.whiteText : AppColors.fullBlack,
            text: "Russian".tr(),
            icon: Assets.icons.rus.svg(),

          ),
        ],
      ),
    );
  }
}
