import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/data/table_data/table_api.dart';
import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';

@Injectable(as: TableRepo)
class TableRepoImpl extends TableRepo {
  final TableApi api;
  final Storage storage;

  TableRepoImpl(
    this.api,
    this.storage,
  );

  @override
  Future<List<dynamic>> getTable() async {
    final response = await api.tableGet();
    return response.data;
  }

  @override
  Future<void> tableChose({required int id}) async {
    final response = await api.tableChose(id: id);
    await storage.cardId.set(response.data["cart_id"]);
    debugPrint("stol id ${storage.cardId.call()}");
    return response.data;
  }

  @override
  Future<void> tableCreated() async {
    final response = await api.tableCreate();
    await storage.cardId.set(response.data["cart_id"]);
    debugPrint("$response");
    return response.data;
  }

  @override
  Future<void> tableCreatedVegetables() async {
    final response = await api.tableCreateVegetables();
    await storage.cardCreate.set(response.data['cart_id']);
    debugPrint("$response""asdaaaaaaadddddddddddddddddddddddddddddddddddddddddddddddddasdasdasdsadsadas");
    return response.data;
  }
}
