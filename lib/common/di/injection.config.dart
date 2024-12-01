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
import 'package:WaiterPro/common/di/app_module.dart' as _i714;
import 'package:WaiterPro/common/di/network_module.dart' as _i980;
import 'package:WaiterPro/common/widgets/display/display.dart' as _i46;
import 'package:WaiterPro/common/widgets/display/display_impl.dart' as _i11;
import 'package:WaiterPro/data/auth_data/auth_api.dart' as _i367;
import 'package:WaiterPro/data/auth_data/auth_repo_impl.dart' as _i721;
import 'package:WaiterPro/data/basket_data/basket_api.dart' as _i935;
import 'package:WaiterPro/data/basket_data/basket_repo_impl.dart' as _i982;
import 'package:WaiterPro/data/finish_data/finish_data_api.dart' as _i629;
import 'package:WaiterPro/data/finish_data/finish_data_repo_impl.dart' as _i21;
import 'package:WaiterPro/data/food_category/food_category_api.dart' as _i342;
import 'package:WaiterPro/data/food_category/food_category_repo_impl.dart'
    as _i798;
import 'package:WaiterPro/data/order_data/order_api.dart' as _i1064;
import 'package:WaiterPro/data/order_data/order_repo_impl.dart' as _i413;
import 'package:WaiterPro/data/process_data/order_process_api.dart' as _i591;
import 'package:WaiterPro/data/process_data/order_process_impl.dart' as _i176;
import 'package:WaiterPro/data/products_data/products_api.dart' as _i373;
import 'package:WaiterPro/data/products_data/products_repo_impl.dart' as _i761;
import 'package:WaiterPro/data/profile_data/profile_api.dart' as _i718;
import 'package:WaiterPro/data/profile_data/profile_repo_impl.dart' as _i261;
import 'package:WaiterPro/data/start_repo_impl.dart' as _i1066;
import 'package:WaiterPro/data/table_data/table_api.dart' as _i728;
import 'package:WaiterPro/data/table_data/table_repo_impl.dart' as _i992;
import 'package:WaiterPro/domain/auth_interceptor/auth_interceptor.dart'
    as _i708;
import 'package:WaiterPro/domain/repo/auth/auth_repo.dart' as _i219;
import 'package:WaiterPro/domain/repo/basket/basket_repo.dart' as _i166;
import 'package:WaiterPro/domain/repo/category/category_repo.dart' as _i374;
import 'package:WaiterPro/domain/repo/finish_today/finish_today_repo.dart'
    as _i805;
import 'package:WaiterPro/domain/repo/order/order_repo.dart' as _i242;
import 'package:WaiterPro/domain/repo/product/products_repo.dart' as _i387;
import 'package:WaiterPro/domain/repo/profile/profile_repo.dart' as _i829;
import 'package:WaiterPro/domain/repo/start_repo.dart' as _i879;
import 'package:WaiterPro/domain/repo/table/table_repo.dart' as _i236;
import 'package:WaiterPro/domain/repo/table_process_repo/table_process_repo.dart'
    as _i596;
import 'package:WaiterPro/domain/storage/storage.dart' as _i550;
import 'package:WaiterPro/features/about_page/cubit/about_cubit.dart' as _i751;
import 'package:WaiterPro/features/auth/login/cubit/login_cubit.dart' as _i953;
import 'package:WaiterPro/features/done_order/cubit/done_cubit.dart' as _i232;
import 'package:WaiterPro/features/finish_day/cubit/finish_day_cubit.dart'
    as _i1016;
import 'package:WaiterPro/features/foods/cubit/foods_cubit.dart' as _i174;
import 'package:WaiterPro/features/history/cubit/history_cubit.dart' as _i618;
import 'package:WaiterPro/features/home/cubit/home_cubit.dart' as _i117;
import 'package:WaiterPro/features/main/cubit/main_cubit.dart' as _i269;
import 'package:WaiterPro/features/process/cubit/process_cubit.dart' as _i511;
import 'package:WaiterPro/features/product_add/cubit/product_add_cubit.dart'
    as _i834;
import 'package:WaiterPro/features/profile/cubit/profile_cubit.dart' as _i299;
import 'package:WaiterPro/features/settings/cubit/settings_cubit.dart' as _i200;
import 'package:WaiterPro/features/start/splash/cubit/splash_cubit.dart'
    as _i369;
import 'package:WaiterPro/features/store/cubit/store_cubit.dart' as _i621;
import 'package:WaiterPro/features/table_selection/cubit/table_cubit.dart'
    as _i152;

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
    gh.factory<_i618.HistoryCubit>(() => _i618.HistoryCubit());
    gh.factory<_i834.ProductAddCubit>(() => _i834.ProductAddCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger);
    gh.lazySingleton<_i708.LocaleProvider>(() => _i708.LocaleProvider());
    await gh.lazySingletonAsync<_i550.Storage>(
      () => _i550.Storage.create(),
      preResolve: true,
    );
    gh.singleton<_i46.Display>(() => _i11.DisplayImpl());
    gh.lazySingleton<_i708.AuthInterceptor>(() => _i708.AuthInterceptor(
          gh<_i550.Storage>(),
          gh<_i708.LocaleProvider>(),
        ));
    gh.factory<_i269.MainCubit>(() => _i269.MainCubit(gh<_i550.Storage>()));
    gh.factory<_i369.SplashCubit>(() => _i369.SplashCubit(gh<_i550.Storage>()));
    gh.factory<_i879.StartRepo>(
        () => _i1066.StartRepoImpl(gh<_i550.Storage>()));
    gh.factory<_i361.Dio>(() => networkModule.dio(gh<_i708.AuthInterceptor>()));
    gh.factory<_i935.BasketApi>(() => _i935.BasketApi(gh<_i361.Dio>()));
    gh.factory<_i342.FoodCategoryApi>(
        () => _i342.FoodCategoryApi(gh<_i361.Dio>()));
    gh.factory<_i1064.OrderApi>(() => _i1064.OrderApi(gh<_i361.Dio>()));
    gh.factory<_i591.OrderProcessApi>(
        () => _i591.OrderProcessApi(gh<_i361.Dio>()));
    gh.factory<_i373.ProductsApi>(() => _i373.ProductsApi(gh<_i361.Dio>()));
    gh.factory<_i718.ProfileApi>(() => _i718.ProfileApi(gh<_i361.Dio>()));
    gh.factory<_i728.TableApi>(() => _i728.TableApi(gh<_i361.Dio>()));
    gh.factory<_i629.FinishDataApi>(() => _i629.FinishDataApi(gh<_i361.Dio>()));
    gh.factory<_i367.AuthApi>(() => _i367.AuthApi(gh<_i361.Dio>()));
    gh.factory<_i236.TableRepo>(() => _i992.TableRepoImpl(
          gh<_i728.TableApi>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i374.FoodCategoryRepo>(
        () => _i798.FoodCategoryImpl(gh<_i342.FoodCategoryApi>()));
    gh.factory<_i805.FinishTodayRepo>(
        () => _i21.FinishDataImpl(finishDataApi: gh<_i629.FinishDataApi>()));
    gh.factory<_i1016.FinishDayCubit>(
        () => _i1016.FinishDayCubit(gh<_i805.FinishTodayRepo>()));
    gh.factory<_i219.AuthRepository>(() => _i721.AuthRepoImpl(
          gh<_i367.AuthApi>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i117.HomeCubit>(() => _i117.HomeCubit(gh<_i236.TableRepo>()));
    gh.factory<_i953.LoginCubit>(
        () => _i953.LoginCubit(gh<_i219.AuthRepository>()));
    gh.factory<_i242.OrderRepo>(
        () => _i413.OrderRepoImpl(gh<_i1064.OrderApi>()));
    gh.factory<_i596.TableProcessRepo>(
        () => _i176.OrderProcessImpl(gh<_i591.OrderProcessApi>()));
    gh.factory<_i829.ProfileRepo>(
        () => _i261.ProfileRepoImpl(gh<_i718.ProfileApi>()));
    gh.factory<_i387.ProductsRepo>(
        () => _i761.ProductsRepoImpl(gh<_i373.ProductsApi>()));
    gh.factory<_i299.ProfileCubit>(
        () => _i299.ProfileCubit(gh<_i829.ProfileRepo>()));
    gh.factory<_i200.SettingsCubit>(() => _i200.SettingsCubit(
          gh<_i219.AuthRepository>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i511.ProcessCubit>(() => _i511.ProcessCubit(
          gh<_i596.TableProcessRepo>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i166.BasketRepo>(
        () => _i982.BasketRepoImpl(gh<_i935.BasketApi>()));
    gh.factory<_i152.TableCubit>(() => _i152.TableCubit(
          gh<_i236.TableRepo>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i751.AboutCubit>(() => _i751.AboutCubit(
          gh<_i387.ProductsRepo>(),
          gh<_i242.OrderRepo>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i621.StoreCubit>(() => _i621.StoreCubit(
          gh<_i236.TableRepo>(),
          gh<_i242.OrderRepo>(),
          gh<_i550.Storage>(),
        ));
    gh.factory<_i232.DoneCubit>(
        () => _i232.DoneCubit(gh<_i596.TableProcessRepo>()));
    gh.factory<_i174.FoodsCubit>(() => _i174.FoodsCubit(
          gh<_i374.FoodCategoryRepo>(),
          gh<_i387.ProductsRepo>(),
          gh<_i550.Storage>(),
          gh<_i242.OrderRepo>(),
          gh<_i236.TableRepo>(),
        ));
    return this;
  }
}

class _$AppModule extends _i714.AppModule {}

class _$NetworkModule extends _i980.NetworkModule {}
