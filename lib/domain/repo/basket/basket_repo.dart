import 'package:restaurants_menu/domain/model/basket/basket.dart';

abstract class BasketRepo {
  Future<List<BasketCategory>> basketCategory({required int page});
}
