abstract class TableRepo {
  Future<List<dynamic>> getTable();
  // Future<void>tableCreated({required int id});
  Future<void>tableChose({required int id});
}
