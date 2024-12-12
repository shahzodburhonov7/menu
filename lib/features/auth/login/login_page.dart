import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/router/app_router.dart';
import 'package:WaiterPro/common/widgets/common_text_field.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
import 'package:WaiterPro/common/widgets/custom_button.dart';
import 'package:WaiterPro/features/auth/login/cubit/login_cubit.dart';
import 'package:WaiterPro/features/auth/login/cubit/login_state.dart';

@RoutePage()
class LoginPage extends BasePage<LoginCubit, LoginBuildable, LoginListenable> {
  LoginPage({super.key});

  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void listener(BuildContext context, LoginListenable state) {
    switch (state.effect) {
      case null:
        break;
      case LoginEffect.error:
        CommonToast.snackBar(
          context,
          message: "Parol yoki email xato",
        );
      case LoginEffect.success:
        context.router.replaceAll(
          [
            MainRoute(),
          ],
        );
    }
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, LoginBuildable state) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Hi Welcome".tr(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // "Hi Welcome".s(30.sp).w(700).c(AppColors.black).tr(),
                ],
              ),
              SizedBox(height: 38.h),
              Row(
                children: [
                  "Login".s(14).w(400).c(AppColors.black).tr(),
                ],
              ),
              SizedBox(height: 6.h),
              CommonTextField(
                onChanged: (v) => cubit.clearError(),
                controller: userName,
                background: AppColors.white,
                hint: "Enter your login".tr(),
                enabledBorderColor: AppColors.borderColor,
              ),
              if (state.loginError.isNotEmpty)
                state.loginError.s(14.sp).c(AppColors.validationRed),
              SizedBox(height: 22.h),
              Row(
                children: [
                  "password".s(14.sp).w(400).c(AppColors.black).tr(),
                ],
              ),
              SizedBox(height: 6.h),
              CommonTextField(
                onChanged: (v) => cubit.clearError(),
                controller: password,
                hint: "Password".tr(),
                obscureText: true,
                background: AppColors.white,
                enabledBorderColor: AppColors.borderColor,
              ),
              if (state.passwordError.isNotEmpty)
                state.passwordError.s(14.sp).c(AppColors.validationRed),
              SizedBox(height: 80.h),
              CustomButton(
                loading: state.loading,
                onTap: () {
                  final res = cubit.validation(
                    login: userName.text,
                    password: password.text,
                  );
                  if (res) {
                    cubit.userLogin(
                      userName: userName.text,
                      password: password.text,
                    );
                  }
                },
                text: 'Log in'.tr(),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
