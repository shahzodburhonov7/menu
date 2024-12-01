import 'package:freezed_annotation/freezed_annotation.dart';

part  'home_state.freezed.dart';

@freezed
class HomeBuildable with _$HomeBuildable {
  const factory HomeBuildable({
    @Default(false) bool postTable
  }) = _HomeBuildable;
}

@freezed
class HomeListenable with _$HomeListenable {
  const factory HomeListenable({TableEffect? effect}) = _HomeListenable;
}
enum TableEffect{success,error}