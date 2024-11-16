
import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/features/settings/cubit/settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsBuildable, SettingsListenable> {
  SettingsCubit() : super(const SettingsBuildable());
}
