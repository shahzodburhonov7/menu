import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/constants/constants.dart';

@injectable
class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<Response> userLogin(
      {required String username, required String password}) {
    return _dio.post(
      Constants.apiLogin,
      data: FormData.fromMap(
        {
          "username": username,
          "password": password,
        },
      ),
    );
  }

  Future<Response> userLogOut({required String refreshToken}) {
    return _dio.post(
      Constants.apiLogOut,
      data: FormData.fromMap(
        {"refresh_token": refreshToken},
      ),
    );
  }
}
