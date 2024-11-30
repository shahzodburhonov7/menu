import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';
import 'package:WaiterPro/domain/storage/storage.dart';

@injectable
class FoodCategoryApi {
  final Dio dio;

  FoodCategoryApi(this.dio);

  Future<Response> foodCategory({required int page}) async {
    return await dio.get(USER_TYPE == Constants.ofitsant || USER_TYPE == Constants.kassir
        ? "${Constants.apiFoodCategory}$page"
        : Constants.apiProductCategory);
  }
}
