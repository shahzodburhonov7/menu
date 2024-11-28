import 'package:WaiterPro/domain/model/profile_model/profile.dart';

abstract class ProfileRepo {
  Future<Profile> profileList();

}