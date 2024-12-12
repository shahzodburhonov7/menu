import 'package:WaiterPro/common/base/base_page.dart';
import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:WaiterPro/common/widgets/common_text_field.dart';
import 'package:WaiterPro/common/widgets/common_toast.dart';
import 'package:WaiterPro/common/widgets/custom_button.dart';
import 'package:WaiterPro/domain/model/category/food_category.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_cubit.dart';
import 'package:WaiterPro/features/product_add/cubit/product_add_state.dart';
import 'package:WaiterPro/features/product_add/widget/build_image_picker.dart';
import 'package:WaiterPro/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProductAddPage extends BasePage<ProductAddCubit, ProductAddBuildable,
    ProductAddListenable> {
  ProductAddPage({super.key});

  TextEditingController productName = TextEditingController();

  @override
  void listener(BuildContext context, ProductAddListenable state) {
    switch (state.effect) {
      case null:
        break;
      case ProductEffect.error:
        CommonToast.snackBar(
          context,
          message: "xato",
        );
      case ProductEffect.success:
        CommonToast.snackBar(
          context,
          message: "Malumotlar qo'shildi",
          color: Colors.green,
        );
    }
  }

  @override
  void init(BuildContext context) {
    context.read<ProductAddCubit>().getAllList();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ProductAddBuildable state) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final containerWidth = screenWidth * (353 / 375);
    final containerHeight = screenHeight * (100 / 812);
    final cubit = context.read<ProductAddCubit>();

    return Scaffold(
      appBar: AppBar(
        title: "Mahsulot qo’shish".s(22.sp).w(600),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              context.popRoute();
            },
            child: Assets.icons.back.svg(),
          ),
        ),
      ),
      body: Padding(
        padding: REdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Yangi mahsulot".s(18.sp).w(600),
              SizedBox(height: 20.h),
              "Mahsulot turi".s(14.sp).w(400).c(AppColors.black).tr(),
              SizedBox(height: 6.h),
              Container(
                height: 56.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.borderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: REdgeInsets.all(8.0),
                  child: DropdownButton<FoodCategory>(
                    value: state.selectedCategory,
                    dropdownColor: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    hint: Text('Taomlar'),
                    isExpanded: true,
                    underline: SizedBox(),
                    items: state.foodCategoryList.map((FoodCategory item) {
                      return DropdownMenuItem<FoodCategory>(
                        value: item,
                        child: Text(item.name_uz!),
                      );
                    }).toList(),
                    onChanged: (FoodCategory? newValue) {
                      cubit.updateSelectedCategory(newValue);
                    },
                  ),
                ),
              ),
              if (state.selectedCategoryError != null)
                state.selectedCategoryError.s(14.sp).c(AppColors.validationRed),
              SizedBox(height: 12.h),
              "Mahsulot nomi".s(14.sp).w(400).c(AppColors.black).tr(),
              SizedBox(height: 6.h),
              CommonTextField(
                controller: productName,
                onChanged: (v) => cubit.clearError(),
                hint: "Taom",
                background: AppColors.white,
                enabledBorderColor: AppColors.borderColor,
              ),
              if (state.productName.isNotEmpty)
                state.productName.s(14.sp).c(AppColors.validationRed),
              SizedBox(height: 20.h),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: [6, 3],
                radius: Radius.circular(12),
                color: Colors.grey,
                strokeWidth: 0.5,
                child: GestureDetector(
                  onTap: () async {
                    await showModalBottomSheet(
                      context: context,
                      builder: (context) => BuildImagePickerOptions(
                        onPressed: () async {
                          Navigator.pop(context);
                          await cubit.pickImageFromCamera();
                        },
                        onTap: () async {
                          Navigator.pop(context);
                          await cubit.pickImageFromGallery();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: containerWidth,
                    height: containerHeight,
                    color: Colors.white,
                    child: state.selectedImage == null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.images.upload.svg(),
                              SizedBox(width: 15.w),
                              "Upload photo".s(12.sp).w(400),
                            ],
                          )
                        : Image.file(
                            state.selectedImage!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                  ),
                ),
              ),
              if (state.productImage.isNotEmpty)
                state.productImage.s(14.sp).c(AppColors.validationRed),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              CustomButton(
                loading: state.loading,
                onTap: () {
                  final res = cubit.validation(
                    selectedCategory: state.selectedCategory,
                    productName: productName.text,
                    productImage: state.selectedImage,
                  );
                  if (res) {
                    cubit.productAdd(
                      productName: productName.text,
                      product: state.selectedImage!,
                      categoryId: state.foodCategoryList.first.id!,
                    );
                    productName.clear();
                    cubit.updateSelectedCategory(null);
                    cubit.clearSelectedImage();
                    state.productImage == "";
                  }

                },

                text: "Saqlash",
                radius: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
