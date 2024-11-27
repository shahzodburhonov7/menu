import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/common/widgets/custom_container.dart';
import 'package:restaurants_menu/features/profile/cubit/profile_cubit.dart';
import 'package:restaurants_menu/features/profile/cubit/profile_state.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class ProfilePage extends BasePage<ProfileCubit, ProfileBuildable, ProfileListenable> {
  const ProfilePage({super.key});

  @override
  void init(BuildContext context) {
    context.read<ProfileCubit>().profileList();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ProfileBuildable state) {
    return Scaffold(
      appBar: AppBar(
        title: "Ma’lumotlar".s(22.sp).w(600),
        centerTitle: true,
      ),
      body: state.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: REdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 90.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xffC2C4CA),
                          width: 1.0.w,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffEEF0F4),
                        backgroundImage: state.profile!.profile_image != null ? NetworkImage("http://api.repid.uz/${state.profile!.profile_image!}") : null,
                        radius: 30,
                        child: state.profile!.profile_image == null
                            ? Assets.icons.person.svg(
                                width: 34.67.w,
                                height: 43.33.h,
                              )
                            : null,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      'Familiyasi'.s(12).w(500).c(AppColors.textColor),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  CustomContainer(
                    child: Row(
                      children: [
                        state.profile!.first_name.toString().s(14).w(400),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      'Ismi'.s(12).w(500).c(AppColors.textColor),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  CustomContainer(
                    child: Row(
                      children: [
                        state.profile!.last_name.toString().s(14).w(400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
