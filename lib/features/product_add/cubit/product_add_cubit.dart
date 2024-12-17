import 'dart:io';
import 'package:WaiterPro/common/base/base_cubit.dart';
import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/domain/repo/product/products_repo.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductAddCubit
    extends BaseCubit<ProductAddBuildable, ProductAddListenable> {
  ProductAddCubit(this.repo) : super(const ProductAddBuildable());
  final ProductsRepo repo;

  void toggleExpanded() {
    build((buildable) => buildable.copyWith(isExpanded: !buildable.isExpanded));
  }

  final ImagePicker _picker = ImagePicker();

  void getAllList() {
    callable(
      future: repo.getCategoryAll(),
      buildOnStart: () => buildable.copyWith(isExpanded: true),
      buildOnData: (d) =>
          buildable.copyWith(foodCategoryList: d, isExpanded: false),
      buildOnError: (e) => buildable.copyWith(isExpanded: false),
    );
  }

  void productAdd({
    required String productName,
    required File product,
    required int categoryId,
  }) {
    callable(
      future: repo.productAdd(
          productName: productName,
          productImage: product,
          categoryId: categoryId),
      buildOnStart: () => buildable.copyWith(addLoading: true),
      buildOnData: (d) => buildable.copyWith(addLoading: false),
      buildOnError: (e) => buildable.copyWith(addLoading: false),
      invokeOnData: (d) =>
          const ProductAddListenable(effect: ProductEffect.success),
      invokeOnError: (e) =>
          const ProductAddListenable(effect: ProductEffect.error),
    );
  }

  void clearError() {
    build((buildable) => buildable.copyWith(productName: ""));
  }

  void clearSelectedImage() {
    build((buildable) => buildable.copyWith(selectedImage: null));
  }

  Future<void> pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      build((buildable) =>
          buildable.copyWith(selectedImage: File(pickedFile.path)));
    }
  }

  void updateSelectedCategory(FoodCategory? category) {
    build((buildable) => buildable.copyWith(
          selectedCategory: category,
          selectedCategoryError: "",
        ));
  }

  bool validation({
    required FoodCategory? selectedCategory,
    required String productName,
    required File? productImage,
  }) {
    if (selectedCategory == null) {
      build((buildable) => buildable.copyWith(
            selectedCategoryError: "Product type not selected".tr(),
          ));
      return false;
    }

    if (productName.isEmpty) {
      build((buildable) => buildable.copyWith(
            productName: "Product name is empty".tr(),
          ));
      return false;
    }

    if (productImage == null) {
      build(
        (buildable) => buildable.copyWith(
          productImage: "No image selected.",
        ),
      );
      return false;
    }

    return true;
  }

  // Pick an image from the camera
  Future<void> pickImageFromCamera() async {
    await Future.delayed(Duration(seconds: 1)); // Kichik kechikish qo'shish
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      build((buildable) =>
          buildable.copyWith(selectedImage: File(pickedFile.path)));
    }
  }
}
