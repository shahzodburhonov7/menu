// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      final args = routeData.argsAs<AboutRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AboutPage(
          foodId: args.foodId,
          key: args.key,
        ),
      );
    },
    DoneRoute.name: (routeData) {
      final args =
          routeData.argsAs<DoneRouteArgs>(orElse: () => const DoneRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DonePage(key: args.key),
      );
    },
    FinishDayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FinishDayPage(),
      );
    },
    FoodsRoute.name: (routeData) {
      final args = routeData.argsAs<FoodsRouteArgs>(
          orElse: () => const FoodsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FoodsPage(key: args.key),
      );
    },
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    MainRoute.name: (routeData) {
      final args =
          routeData.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MainPage(key: args.key),
      );
    },
    ProcessRoute.name: (routeData) {
      final args = routeData.argsAs<ProcessRouteArgs>(
          orElse: () => const ProcessRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProcessPage(key: args.key),
      );
    },
    ProductAddRoute.name: (routeData) {
      final args = routeData.argsAs<ProductAddRouteArgs>(
          orElse: () => const ProductAddRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductAddPage(key: args.key),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPage(key: args.key),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    StoreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StorePage(),
      );
    },
    TableRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TablePage(),
      );
    },
    VegetablesRoute.name: (routeData) {
      final args = routeData.argsAs<VegetablesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VegetablesPage(
          args.foodId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<AboutRouteArgs> {
  AboutRoute({
    required int foodId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AboutRoute.name,
          args: AboutRouteArgs(
            foodId: foodId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<AboutRouteArgs> page = PageInfo<AboutRouteArgs>(name);
}

class AboutRouteArgs {
  const AboutRouteArgs({
    required this.foodId,
    this.key,
  });

  final int foodId;

  final Key? key;

  @override
  String toString() {
    return 'AboutRouteArgs{foodId: $foodId, key: $key}';
  }
}

/// generated route for
/// [DonePage]
class DoneRoute extends PageRouteInfo<DoneRouteArgs> {
  DoneRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DoneRoute.name,
          args: DoneRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DoneRoute';

  static const PageInfo<DoneRouteArgs> page = PageInfo<DoneRouteArgs>(name);
}

class DoneRouteArgs {
  const DoneRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DoneRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FinishDayPage]
class FinishDayRoute extends PageRouteInfo<void> {
  const FinishDayRoute({List<PageRouteInfo>? children})
      : super(
          FinishDayRoute.name,
          initialChildren: children,
        );

  static const String name = 'FinishDayRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FoodsPage]
class FoodsRoute extends PageRouteInfo<FoodsRouteArgs> {
  FoodsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          FoodsRoute.name,
          args: FoodsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'FoodsRoute';

  static const PageInfo<FoodsRouteArgs> page = PageInfo<FoodsRouteArgs>(name);
}

class FoodsRouteArgs {
  const FoodsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FoodsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<MainRouteArgs> {
  MainRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<MainRouteArgs> page = PageInfo<MainRouteArgs>(name);
}

class MainRouteArgs {
  const MainRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProcessPage]
class ProcessRoute extends PageRouteInfo<ProcessRouteArgs> {
  ProcessRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProcessRoute.name,
          args: ProcessRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProcessRoute';

  static const PageInfo<ProcessRouteArgs> page =
      PageInfo<ProcessRouteArgs>(name);
}

class ProcessRouteArgs {
  const ProcessRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProcessRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProductAddPage]
class ProductAddRoute extends PageRouteInfo<ProductAddRouteArgs> {
  ProductAddRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProductAddRoute.name,
          args: ProductAddRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProductAddRoute';

  static const PageInfo<ProductAddRouteArgs> page =
      PageInfo<ProductAddRouteArgs>(name);
}

class ProductAddRouteArgs {
  const ProductAddRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProductAddRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StorePage]
class StoreRoute extends PageRouteInfo<void> {
  const StoreRoute({List<PageRouteInfo>? children})
      : super(
          StoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'StoreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TablePage]
class TableRoute extends PageRouteInfo<void> {
  const TableRoute({List<PageRouteInfo>? children})
      : super(
          TableRoute.name,
          initialChildren: children,
        );

  static const String name = 'TableRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VegetablesPage]
class VegetablesRoute extends PageRouteInfo<VegetablesRouteArgs> {
  VegetablesRoute({
    required int foodId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          VegetablesRoute.name,
          args: VegetablesRouteArgs(
            foodId: foodId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VegetablesRoute';

  static const PageInfo<VegetablesRouteArgs> page =
      PageInfo<VegetablesRouteArgs>(name);
}

class VegetablesRouteArgs {
  const VegetablesRouteArgs({
    required this.foodId,
    this.key,
  });

  final int foodId;

  final Key? key;

  @override
  String toString() {
    return 'VegetablesRouteArgs{foodId: $foodId, key: $key}';
  }
}
