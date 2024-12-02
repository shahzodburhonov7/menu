import 'package:WaiterPro/domain/model/cashier_finish/cashier_finish.dart';
import 'package:WaiterPro/domain/model/finish/finish_today.dart';

abstract class FinishTodayRepo {
  Future <FinishToday>finishToday();
  Future <CashierFinish>todayCashier();

}