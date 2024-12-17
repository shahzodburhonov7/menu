import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';
import 'package:WaiterPro/domain/repo/table/table_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/vegetables/cubit/vegetables_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class VegetablesCubit
    extends BaseCubit<VegetablesBuildable, VegetablesListenable> {
  VegetablesCubit(this.productRepo, this.storage, this.repo)
      : super(const VegetablesBuildable()) {}
  final ProductsRepo productRepo;
  final Storage storage;
  final TableRepo repo;

  void clearError({
    bool clearPriceError = true,
    bool clearQuantityError = true,
    bool clearDateError = true,
    bool clearTimeError = true,
  }) {
    if (clearPriceError) {
      build((buildable) => buildable.copyWith(priceError: ""));
    }
    if (clearQuantityError) {
      build((buildable) => buildable.copyWith(quantityError: ""));
    }
    if (clearDateError) {
      build((buildable) => buildable.copyWith(dateError: ""));
    }
    if (clearTimeError) {
      build((buildable) => buildable.copyWith(timeError: ""));
    }
  }

  bool validation({
    required String quantity,
    required String price,
    required String date,
    required String time,
  }) {
    bool isValid = true;

    // Price maydoni uchun validation
    if (price.isEmpty) {
      build((buildable) => buildable.copyWith(priceError: 'Price is required'));
      isValid = false;
    } else {
      build((buildable) => buildable.copyWith(priceError: ''));
    }

    // Quantity maydoni uchun validation
    if (quantity.isEmpty) {
      build((buildable) =>
          buildable.copyWith(quantityError: 'Quantity is required'));

      isValid = false;
    } else {
      build((buildable) => buildable.copyWith(quantityError: ''));
    }

    // Date maydoni uchun validation
    if (date.isEmpty) {
      build((buildable) => buildable.copyWith(dateError: 'Date is required'));

      isValid = false;
    } else {
      build((buildable) => buildable.copyWith(dateError: ''));
    }

    // Time maydoni uchun validation
    if (time.isEmpty) {
      build((buildable) => buildable.copyWith(timeError: 'Time is required'));

      isValid = false;
    } else {
      build((buildable) => buildable.copyWith(timeError: ''));
    }

    return isValid;
  }

  void changeDropdownValue(String value) {
    build((buildable) => buildable.copyWith(selectedValue: value));
  }

  Future<void> tableCreate() async {
    await callable(
      future: repo.tableCreatedVegetables(),
      buildOnStart: () => buildable.copyWith(postCreate: true),
      buildOnData: (d) => buildable.copyWith(postCreate: false),
      buildOnError: (e) => buildable.copyWith(postCreate: false),
    );
  }

  Future<void> addVegetables({
    required int product,
    required int weight,
    required String unit_status,
    required String date,
    required String time,
    required int price,
  }) async {
    await tableCreate();
    await callable(
      future: productRepo.productInfoAdd(
        product: product,
        weight: weight,
        unit_status: unit_status,
        cart: storage.cardCreate.call()!,
        date: date,
        time: time,
        price: price,
      ),
      buildOnStart: () => buildable.copyWith(infoLoading: true),
      buildOnData: (d) => buildable.copyWith(infoLoading: false),
      buildOnError: (e) => buildable.copyWith(infoLoading: false),
      invokeOnData: (d) =>
          const VegetablesListenable(effect: VegetablesEffect.success),
      invokeOnError: (e) =>
          const VegetablesListenable(effect: VegetablesEffect.error),
    );
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
