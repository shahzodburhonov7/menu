import 'package:WaiterPro/domain/model/vegetables_info/vegetables_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vegetables_state.freezed.dart';

@freezed
class VegetablesBuildable with _$VegetablesBuildable {
  const factory VegetablesBuildable({
    @Default(false) bool loading,
    @Default(false) bool infoLoading,
    VegetablesInfo? vegetablesInfo,
    @Default('') String selectedValue,
    @Default('') String quantityError,
    @Default('') String priceError,
    @Default('') String dateError,
    @Default('') String timeError,
    @Default(null) DateTime? selectedDate,
  }) = _VegetablesBuildable;
}

@freezed
class VegetablesListenable with _$VegetablesListenable {
  const factory VegetablesListenable({VegetablesEffect? effect}) =
      _VegetablesListenable;
}

enum VegetablesEffect { error, success}
