
import 'package:injectable/injectable.dart';
import 'package:WaiterPro/domain/repo/start_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';

@Injectable(as: StartRepo)
class StartRepoImpl extends StartRepo {
  StartRepoImpl(this._storage);

  final Storage _storage;

  @override
  Future<void> setOnboarded() async {
    await _storage.onboarded.set(true);
  }

  @override
  bool getOnboarded() {
    final result = _storage.onboarded.call();
    return result ?? false;
  }
}