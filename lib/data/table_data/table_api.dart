import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/constants/constants.dart';

@injectable
class TableApi {
  final Dio dio;

  TableApi(this.dio);

  Future<Response> tableGet() async {
    return await dio.get(Constants.apiTable);
  }

  Future<Response>tableChose({required int id})async{
    return await dio.post(Constants.apiTableChoose,data: FormData.fromMap(
      {
        "table_id": id,
      }
    ));
  }

  Future<Response> tableId({required int id}) async {
    debugPrint("Debug 4");
    return await dio.post(
      Constants.apiTableId,
      data: FormData.fromMap(
        {
          "table_id": id,
        },
      ),
    );
  }
}
