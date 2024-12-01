import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_state.dart';
import 'package:injectable/injectable.dart';


@injectable
class ProductAddCubit extends BaseCubit<ProductAddBuildable, ProductAddListenable> {
  ProductAddCubit() : super(const ProductAddBuildable());

}