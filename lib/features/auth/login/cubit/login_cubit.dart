import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/auth/auth_repo.dart';
import 'package:WaiterPro/features/auth/login/cubit/login_state.dart';

@injectable
class LoginCubit extends BaseCubit<LoginBuildable, LoginListenable> {
  LoginCubit(this.repo) : super(LoginBuildable());
  final AuthRepository repo;

  void userLogin({
    required String userName,
    required String password,
  }) {
    callable(
      future: repo.userLogin(
        username: userName,
        password: password,
      ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
      invokeOnData: (d) => const LoginListenable(effect: LoginEffect.success),
      invokeOnError: (e) => const LoginListenable(effect: LoginEffect.error),
    );
  }

  void clearError({bool clearLogin = true}) {
    if (clearLogin) {
      build((buildable) => buildable.copyWith(loginError: ""));
    } else {
      build((buildable) => buildable.copyWith(passwordError: ""));
    }
  }


  bool validation({required String login, required String password}) {
    if (login.isEmpty || login.length < 3) {
      build(
        (buildable) => buildable.copyWith(
          loginError: "Login xato",
        ),
      );
      return false;
    }

    if (password.isEmpty || password.length < 3) {
      build(
        (buildable) => buildable.copyWith(
          passwordError: "Parol xato",
        ),
      );
      return false;
    }

    return true;
  }
}
