// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:restaurants_menu/common/di/app_module.dart' as _i565;
import 'package:restaurants_menu/common/di/network_module.dart' as _i613;
import 'package:restaurants_menu/common/widgets/display/display.dart' as _i472;
import 'package:restaurants_menu/common/widgets/display/display_impl.dart'
    as _i514;
import 'package:restaurants_menu/data/auth_data/auth_api.dart' as _i379;
import 'package:restaurants_menu/data/auth_data/auth_repo_impl.dart' as _i43;
import 'package:restaurants_menu/data/food_category/food_category_api.dart'
    as _i636;
import 'package:restaurants_menu/data/food_category/food_category_repo_impl.dart'
    as _i610;
import 'package:restaurants_menu/data/order_data/order_api.dart' as _i352;
import 'package:restaurants_menu/data/order_data/order_repo_impl.dart' as _i521;
import 'package:restaurants_menu/data/products_data/products_api.dart' as _i900;
import 'package:restaurants_menu/data/products_data/products_repo_impl.dart'
    as _i351;
import 'package:restaurants_menu/data/start_repo_impl.dart' as _i126;
import 'package:restaurants_menu/data/table_data/table_api.dart' as _i108;
import 'package:restaurants_menu/data/table_data/table_repo_impl.dart' as _i691;
import 'package:restaurants_menu/domain/auth_interceptor/auth_interceptor.dart'
    as _i276;
import 'package:restaurants_menu/domain/repo/auth/auth_repo.dart' as _i185;
import 'package:restaurants_menu/domain/repo/category/category_repo.dart'
    as _i160;
import 'package:restaurants_menu/domain/repo/order/order_repo.dart' as _i479;
import 'package:restaurants_menu/domain/repo/product/products_repo.dart' as _i7;
import 'package:restaurants_menu/domain/repo/start_repo.dart' as _i975;
import 'package:restaurants_menu/domain/repo/table/table_repo.dart' as _i713;
import 'package:restaurants_menu/domain/storage/storage.dart' as _i314;
import 'package:restaurants_menu/features/about_page/cubit/about_cubit.dart'
    as _i20;
import 'package:restaurants_menu/features/auth/login/cubit/login_cubit.dart'
    as _i833;
import 'package:restaurants_menu/features/foods/cubit/foods_cubit.dart'
    as _i521;
import 'package:restaurants_menu/features/history/cubit/history_cubit.dart'
    as _i625;
import 'package:restaurants_menu/features/home/cubit/home_cubit.dart' as _i907;
import 'package:restaurants_menu/features/main/cubit/main_cubit.dart' as _i745;
import 'package:restaurants_menu/features/process/cubit/process_cubit.dart'
    as _i13;
import 'package:restaurants_menu/features/profile/cubit/profile_cubit.dart'
    as _i552;
import 'package:restaurants_menu/features/settings/cubit/settings_cubit.dart'
    as _i1026;
import 'package:restaurants_menu/features/start/splash/cubit/splash_cubit.dart'
    as _i826;
import 'package:restaurants_menu/features/store/cubit/store_cubit.dart'
    as _i929;
import 'package:restaurants_menu/features/table_selection/cubit/table_cubit.dart'
    as _i308;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    final networkModule = _$NetworkModule();
    gh.factory<_i625.HistoryCubit>(() => _i625.HistoryCubit());
    gh.factory<_i907.HomeCubit>(() => _i907.HomeCubit());
    gh.factory<_i552.ProfileCubit>(() => _i552.ProfileCubit());
    gh.factory<_i1026.SettingsCubit>(() => _i1026.SettingsCubit());
    gh.factory<_i13.ProcessCubit>(() => _i13.ProcessCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i276.LocaleProvider>(() => _i276.LocaleProvider());
    await gh.lazySingletonAsync<_i314.Storage>(
      () => _i314.Storage.create(),
      preResolve: true,
    );
    gh.factory<_i745.MainCubit>(() => _i745.MainCubit(gh<_i314.Storage>()));
    gh.factory<_i826.SplashCubit>(() => _i826.SplashCubit(gh<_i314.Storage>()));
    gh.factory<_i975.StartRepo>(() => _i126.StartRepoImpl(gh<_i314.Storage>()));
    gh.lazySingleton<_i276.AuthInterceptor>(() => _i276.AuthInterceptor(
          gh<_i314.Storage>(),
          gh<_i276.LocaleProvider>(),
        ));
    gh.singleton<_i472.Display>(() => _i514.DisplayImpl());
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i276.AuthInterceptor>()));
    gh.factory<_i900.ProductsApi>(() => _i900.ProductsApi(gh<_i361.Dio>()));
    gh.factory<_i636.FoodCategoryApi>(
        () => _i636.FoodCategoryApi(gh<_i361.Dio>()));
    gh.factory<_i108.TableApi>(() => _i108.TableApi(gh<_i361.Dio>()));
    gh.factory<_i352.OrderApi>(() => _i352.OrderApi(gh<_i361.Dio>()));
    gh.factory<_i479.OrderRepo>(
        () => _i521.OrderRepoImpl(gh<_i352.OrderApi>()));
    gh.factory<_i379.AuthApi>(() => _i379.AuthApi(gh<_i361.Dio>()));
    gh.factory<_i713.TableRepo>(() => _i691.TableRepoImpl(
          gh<_i108.TableApi>(),
          gh<_i314.Storage>(),
        ));
    gh.factory<_i7.ProductsRepo>(
        () => _i351.ProductsRepoImpl(gh<_i900.ProductsApi>()));
    gh.factory<_i308.TableCubit>(() => _i308.TableCubit(gh<_i713.TableRepo>()));
    gh.factory<_i185.AuthRepository>(() => _i43.AuthRepoImpl(
          gh<_i379.AuthApi>(),
          gh<_i314.Storage>(),
        ));
    gh.factory<_i160.FoodCategoryRepo>(
        () => _i610.FoodCategoryImpl(gh<_i636.FoodCategoryApi>()));
    gh.factory<_i929.StoreCubit>(() => _i929.StoreCubit(
          gh<_i713.TableRepo>(),
          gh<_i479.OrderRepo>(),
        ));
    gh.factory<_i833.LoginCubit>(
        () => _i833.LoginCubit(gh<_i185.AuthRepository>()));
    gh.factory<_i521.FoodsCubit>(() => _i521.FoodsCubit(
          gh<_i160.FoodCategoryRepo>(),
          gh<_i7.ProductsRepo>(),
          gh<_i314.Storage>(),
          gh<_i479.OrderRepo>(),
        ));
    gh.factory<_i20.AboutCubit>(() => _i20.AboutCubit(gh<_i7.ProductsRepo>()));
    return this;
  }
}

class _$AppModule extends _i565.AppModule {}

class _$NetworkModule extends _i613.NetworkModule {}
