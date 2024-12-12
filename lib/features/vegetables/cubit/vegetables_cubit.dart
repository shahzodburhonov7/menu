import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';
import 'package:WaiterPro/features/vegetables/cubit/vegetables_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class VegetablesCubit
    extends BaseCubit<VegetablesBuildable, VegetablesListenable> {
  VegetablesCubit(this.productRepo) : super(const VegetablesBuildable()) {}
  final ProductsRepo productRepo;

  void changeDropdownValue(String value) {
    build((buildable) => buildable.copyWith(selectedValue: value));
  }

  void updateSelectedDate(DateTime date) {
    build((buildable) => buildable.copyWith(selectedDate: date));
  }

  void getFoodInfo({required int id}) {
    debugPrint("======================davlat nima gap $id");
    callable(
      future: productRepo.vegetablesInfo(
        id: id,
      ),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (data) =>
          buildable.copyWith(vegetablesInfo: data, loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
}
