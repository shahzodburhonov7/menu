import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurants_menu/common/base/base_page.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';
import 'package:restaurants_menu/features/foods/foods_page.dart';
import 'package:restaurants_menu/features/history/history_page.dart';
import 'package:restaurants_menu/features/home/home_page.dart';
import 'package:restaurants_menu/features/main/cubit/main_cubit.dart';
import 'package:restaurants_menu/features/main/cubit/main_state.dart';
import 'package:restaurants_menu/features/profile/profile_page.dart';
import 'package:restaurants_menu/features/settings/settings_page.dart';
import 'package:restaurants_menu/gen/assets.gen.dart';

@RoutePage()
class MainPage extends BasePage<MainCubit, MainBuildable, MainListenable> {
  MainPage({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget builder(BuildContext context, MainBuildable state) {
    List<Widget> bottomBarPages = [
      USER_TYPE == "ofitsant" ? const HomePage() : FoodsPage(),
      const HistoryPage(),
      SettingsPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      key: scaffoldKey,
      body: bottomBarPages.elementAt(
        context.read<MainCubit>().onTapped(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(),
            label: '',
            activeIcon: Assets.icons.activeHome.svg(),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.history.svg(),
            label: '',
            activeIcon: Assets.icons.activeHistory.svg(),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.settings.svg(),
            label: '',
            activeIcon: Assets.icons.activeSettings.svg(),
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.account.svg(),
            label: '',
            activeIcon: Assets.icons.activeAccount.svg(),
          ),
        ],
        currentIndex: context.read<MainCubit>().onTapped(),
        onTap: (value) {
          context.read<MainCubit>().setCurrentIndex(value);
          context.read<MainCubit>().onTapped();
        },
      ),
    );
  }
}
