import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';

@injectable
class ProfileApi {
  final Dio dio;

  ProfileApi(this.dio);

  Future <Response>profile()async{
    return await dio.get(Constants.apiAccount);
  }

}
