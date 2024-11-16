abstract class AuthRepository {

  Future<void> userLogin({
    required String username ,
    required String password,
  });
}
