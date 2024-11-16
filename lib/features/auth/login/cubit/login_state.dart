import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginBuildable with _$LoginBuildable {
  factory LoginBuildable({
    @Default(false) bool loading,
    @Default('') String loginError,
    @Default('') String passwordError,
  }) = _LoginBuildable;
}

@freezed
class LoginListenable with _$LoginListenable {
  const factory LoginListenable({LoginEffect? effect}) = _LoginListenable;
}

enum LoginEffect { error, success }
