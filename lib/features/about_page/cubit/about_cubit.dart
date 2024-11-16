import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/domain/repo/product/products_repo.dart';
import 'package:restaurants_menu/features/about_page/cubit/about_state.dart';

@injectable
class AboutCubit extends BaseCubit<AboutBuildable, AboutListenable> {
  AboutCubit(this.productRepo) : super(const AboutBuildable());
  final ProductsRepo productRepo;

  void getFoodInfo({required int id}) {
    callable(
      future: productRepo.foodInfo(id: id, ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) => buildable.copyWith(foodInfo: data, loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
}
