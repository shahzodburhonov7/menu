import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:WaiterPro/features/about_page/about_page.dart';
import 'package:WaiterPro/features/auth/login/login_page.dart';
import 'package:WaiterPro/features/done_order/done_page.dart';
import 'package:WaiterPro/features/foods/foods_page.dart';
import 'package:WaiterPro/features/history/history_page.dart';
import 'package:WaiterPro/features/home/home_page.dart';
import 'package:WaiterPro/features/main/main_page.dart';
import 'package:WaiterPro/features/process/process_page.dart';
import 'package:WaiterPro/features/profile/profile_page.dart';
import 'package:WaiterPro/features/settings/settings_page.dart';
import 'package:WaiterPro/features/start/splash/splash_page.dart';
import 'package:WaiterPro/features/store/store_page.dart';
import 'package:WaiterPro/features/table_selection/table_page.dart';

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
