import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/data/auth_data/auth_api.dart';
import 'package:restaurants_menu/domain/repo/auth/auth_repo.dart';
import 'package:restaurants_menu/domain/storage/storage.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthApi _api;
  final Storage storage;

  AuthRepoImpl(
    this._api,
    this.storage,
  );


  @override
  Future<void> userLogin(
      {required String username , required String password}) async {
    final res = await _api.userLogin(username : username , password: password);

    await storage.token.set(res.data['access']);
    await storage.userType.set(res.data['user_type']);

    debugPrint('TOKEN: ${storage.token.call() ?? ''}');
    debugPrint('userType: ${storage.userType.call() ?? ''}');
  }


}
