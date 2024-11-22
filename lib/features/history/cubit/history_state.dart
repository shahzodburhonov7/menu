import 'package:freezed_annotation/freezed_annotation.dart';

part  'history_state.freezed.dart';

@freezed
class HistoryBuildable with _$HistoryBuildable {
  const factory HistoryBuildable({
    @Default(0) int selectedIndex,

  }) = _HistoryBuildable;
}

@freezed
class HistoryListenable with _$HistoryListenable {
  const factory HistoryListenable() = _HistoryListenable;
}