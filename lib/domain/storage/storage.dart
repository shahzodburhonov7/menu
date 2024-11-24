import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_storage.dart';
import 'package:restaurants_menu/domain/model/products/products.dart';

late Box<FoodProducts> boxOrder;
String USER_TYPE="";

@lazySingleton
class Storage {
  Storage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<Storage> create() async {
    await Hive.initFlutter();
    // Hive.registerAdapter(ProductsAdapter());
    final box = await Hive.openBox('storage');
     boxOrder = await Hive.openBox<FoodProducts>('boxOrder');
    return Storage(box);
  }

  BaseStorage<String>get userType=>BaseStorage(_box, "usertype");

  BaseStorage<int>get cardId=>BaseStorage(_box, "cardId");
  BaseStorage<int>get tableNumber=>BaseStorage(_box, "tableNumber");

  BaseStorage<String> get token => BaseStorage(_box, 'token');
  BaseStorage<String> get refToken => BaseStorage(_box, 'refToken');

  BaseStorage<bool> get onboarded => BaseStorage(_box, 'onboarded');

}