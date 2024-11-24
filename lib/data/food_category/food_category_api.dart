import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';

@injectable
class FoodCategoryApi {
  final Dio dio;

  FoodCategoryApi(this.dio);

  Future<Response> foodCategory({required int page}) async {
    return await dio.get(USER_TYPE == 'ofitsant' ? "${Constants.apiFoodCategory}$page" : Constants.apiProductCategory);
  }
}
