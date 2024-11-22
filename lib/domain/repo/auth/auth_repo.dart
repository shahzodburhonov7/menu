abstract class AuthRepository {
  Future<void> userLogin({
    required String username,
    required String password,
  });

  Future<void> userLogOut({required String refToken});
}
