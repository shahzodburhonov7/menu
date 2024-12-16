import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';
import 'package:WaiterPro/domain/storage/storage.dart';
import 'package:WaiterPro/features/vegetables/cubit/vegetables_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class VegetablesCubit
    extends BaseCubit<VegetablesBuildable, VegetablesListenable> {
  VegetablesCubit(this.productRepo, this.storage)
      : super(const VegetablesBuildable()) {}
  final ProductsRepo productRepo;
  final Storage storage;

  void clearError({
    bool clearQuantity = false,
    bool clearPrice = false,
    bool clearDate = false,
    bool clearTime = false,
  }) {
    build(
      (buildable) => buildable.copyWith(
        quantityError: clearQuantity ? "" : buildable.quantityError,
        priceError: clearPrice ? "" : buildable.priceError,
        dateError: clearDate ? "" : buildable.dateError,
        timeError: clearTime ? "" : buildable.timeError,
      ),
    );
  }

  bool validation({
    required int quantity,
    required int price,
    required String date, // Format: dd.MM.yyyy
    required String time, // Format: hh:mm
  }) {
    if (quantity <= 0) {
      build(
        (buildable) => buildable.copyWith(
          quantityError: "Son xato: musbat son kiriting",
        ),
      );
      return false;
    }

    if (price <= 0) {
      build(
        (buildable) => buildable.copyWith(
          priceError: "Narx xato: musbat qiymat kiriting",
        ),
      );
      return false;
    }

    // Sana uchun (date)
    try {
      final parsedDate = DateFormat('dd.MM.yyyy').parseStrict(date);
      final today = DateTime.now();
      if (parsedDate.isBefore(today)) {
        build(
          (buildable) => buildable.copyWith(
            dateError: "Sana xato: kelajakdagi sanani kiriting",
          ),
        );
        return false;
      }
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          dateError: "Sana xato: to'g'ri formatda kiriting (dd.MM.yyyy)",
        ),
      );
      return false;
    }

    // Vaqt uchun (time)
    final timeParts = time.split(':');
    if (timeParts.length != 2) {
      build(
        (buildable) => buildable.copyWith(
          timeError: "Vaqt xato: to'g'ri formatda kiriting (hh:mm)",
        ),
      );
      return false;
    }

    try {
      final hour = int.parse(timeParts[0]);
      final minute = int.parse(timeParts[1]);
      if (hour < 0 || hour > 23 || minute < 0 || minute > 59) {
        build(
          (buildable) => buildable.copyWith(
            timeError: "Vaqt xato: soat va daqiqani to'g'ri kiriting",
          ),
        );
        return false;
      }
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          timeError: "Vaqt xato: faqat raqam kiriting",
        ),
      );
      return false;
    }

    return true; // Hammasi muvaffaqiyatli o'tdi
  }

  void changeDropdownValue(String value) {
    build((buildable) => buildable.copyWith(selectedValue: value));
  }

  void addVegetables({
    required int product,
    required int weight,
    required String unit_status,
    required String date,
    required String time,
    required int price,
  }) {
    callable(
      future: productRepo.productInfoAdd(
        product: product,
        weight: weight,
        unit_status: unit_status,
        cart: storage.cardId.call()!,
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
