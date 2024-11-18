import 'package:restaurants_menu/domain/model/profile_model/profile.dart';

abstract class ProfileRepo {
  Future<Profile> profileList();

}