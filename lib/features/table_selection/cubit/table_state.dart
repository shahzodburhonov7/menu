import 'package:freezed_annotation/freezed_annotation.dart';
part  'table_state.freezed.dart';

@freezed
class TableBuildable with _$TableBuildable {
  const factory TableBuildable({
    @Default([]) List<dynamic> getTableList,
    @Default(false) bool loading,
    @Default(0) int table,
    @Default(0) int tableId,
    @Default(false) bool postTable
}) = _TableBuildable;
}

@freezed
class TableListenable with _$TableListenable {
  const factory TableListenable({TableEffect? effect}) = _TableListenable;
}
enum TableEffect{success,error}