import 'package:freezed_annotation/freezed_annotation.dart';

part  'process_state.freezed.dart';


@freezed
class ProcessBuildable with _$ProcessBuildable {
  const factory ProcessBuildable() = _ProcessBuildable;
}

@freezed
class ProcessListenable with _$ProcessListenable {
  const factory ProcessListenable() = _ProcessListenable;
}
