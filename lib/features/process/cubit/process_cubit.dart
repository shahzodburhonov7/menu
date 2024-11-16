import 'package:injectable/injectable.dart';
import 'package:restaurants_menu/common/base/base_cubit.dart';
import 'package:restaurants_menu/features/process/cubit/process_state.dart';


@injectable
class ProcessCubit extends BaseCubit<ProcessBuildable, ProcessListenable> {
  ProcessCubit() : super(const ProcessBuildable());
}