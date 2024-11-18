import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/data/profile_data/profile_api.dart';
import 'package:restaurants_menu/domain/model/profile_model/profile.dart';
import 'package:restaurants_menu/domain/repo/profile/profile_repo.dart';

@Injectable(as: ProfileRepo)
class ProfileRepoImpl extends ProfileRepo {
  final ProfileApi api;

  ProfileRepoImpl(this.api);

  @override
  Future<Profile> profileList() async {
    final response = await api.profile();
    return profileFromJson(jsonEncode(response.data));
  }
}
