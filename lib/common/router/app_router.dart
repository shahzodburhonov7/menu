import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurants_menu/features/about_page/about_page.dart';
import 'package:restaurants_menu/features/auth/login/login_page.dart';
import 'package:restaurants_menu/features/done_order/done_page.dart';
import 'package:restaurants_menu/features/foods/foods_page.dart';
import 'package:restaurants_menu/features/history/history_page.dart';
import 'package:restaurants_menu/features/home/home_page.dart';
import 'package:restaurants_menu/features/main/main_page.dart';
import 'package:restaurants_menu/features/process/process_page.dart';
import 'package:restaurants_menu/features/profile/profile_page.dart';
import 'package:restaurants_menu/features/settings/settings_page.dart';
import 'package:restaurants_menu/features/start/splash/splash_page.dart';
import 'package:restaurants_menu/features/store/store_page.dart';
import 'package:restaurants_menu/features/table_selection/table_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: MainRoute.page),
    AutoRoute(page: TableRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: HistoryRoute.page),
    AutoRoute(page: FoodsRoute.page),
    AutoRoute(page: StoreRoute.page),
    AutoRoute(page: AboutRoute.page),
    AutoRoute(page: DoneRoute.page),
  ];
}
