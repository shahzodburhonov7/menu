import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:WaiterPro/data/basket_data/basket_api.dart';
import 'package:WaiterPro/domain/model/basket/basket.dart';
import 'package:WaiterPro/domain/repo/basket/basket_repo.dart';

@Injectable(as: BasketRepo)
class BasketRepoImpl extends BasketRepo {
  final BasketApi api;

  BasketRepoImpl(this.api);

  @override
  Future<List<BasketCategory>> basketCategory({required int page}) async {
    final response = await api.basketCategory(page: page);
    return basketCategoryFromJson(
      jsonEncode(response.data),
    );
  }
}
