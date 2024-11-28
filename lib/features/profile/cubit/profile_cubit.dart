import 'package:injectable/injectable.dart';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/profile/profile_repo.dart';
import 'package:WaiterPro/features/profile/cubit/profile_state.dart';


@injectable
class ProfileCubit extends BaseCubit<ProfileBuildable, ProfileListenable> {
  ProfileCubit(this.profileRepo) : super(const ProfileBuildable());
  final ProfileRepo profileRepo;
  void profileList(){
    callable(future:profileRepo.profileList(),
      buildOnStart: ()=>buildable.copyWith(loading: true,),
      buildOnData: (d)=>buildable.copyWith(loading: false,profile: d),
      buildOnError: (d)=>buildable.copyWith(loading: false)
    );
  }

}
