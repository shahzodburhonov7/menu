import 'dart:convert';

import 'package:WaiterPro/data/finish_data/finish_data_api.dart';
import 'package:WaiterPro/domain/model/cashier_finish/cashier_finish.dart';
import 'package:WaiterPro/domain/model/finish/finish_today.dart';
import 'package:WaiterPro/domain/repo/finish_today/finish_today_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FinishTodayRepo)
class FinishDataImpl extends FinishTodayRepo {
  final FinishDataApi finishDataApi;

  FinishDataImpl({required this.finishDataApi});

  @override
  Future<FinishToday> finishToday() async {
    final response = await finishDataApi.finishToday();
    final res = finishTodayFromJson(jsonEncode(response.data));
    debugPrint("$res");
    return res;
  }

  @override
  Future<CashierFinish> todayCashier() async{
    final response = await finishDataApi.todayCashier();
    final res=cashierFinishFromJson(jsonEncode(response.data));
    return res;
  }
}
