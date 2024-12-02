import 'package:WaiterPro/common/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class FinishDataApi {
  final Dio dio;

  FinishDataApi(this.dio);

  Future<Response> finishToday() async {
    return await dio.post(Constants.apiFinalDay);
  }
  Future<Response> todayCashier() async {
    return await dio.post(Constants.apiFinishCashier);
  }
}
