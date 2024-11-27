import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/di/injection.dart';
import 'package:restaurants_menu/common/router/app_router.dart';
import 'package:restaurants_menu/common/widgets/display/display_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await configureDependencies();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('uz', 'UZ'),
        Locale('en', 'EN'),
        Locale('ru', 'Ru'),
      ],
      path: 'assets/locales',
      fallbackLocale: const Locale('uz', 'UZ'),
      startLocale: const Locale('uz', 'UZ'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return DisplayWidget(
          child: MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'FOOD APP',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  surfaceTintColor: Colors.white,
                  backgroundColor: Colors.white),
              scaffoldBackgroundColor: Colors.white,
            ),
            routerConfig: getIt<AppRouter>().config(),
          ),
        );
      },
    );
  }
}
// hello davlat
