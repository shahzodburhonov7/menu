import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/colors/app_colors.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    this.onTap,
    required this.name,
    required this.price,
    required this.image,
    required this.loading,
  });

  final void Function()? onTap;
  final String name;
  final String price;
  final String image;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 1,
          child: Padding(
            padding: REdgeInsets.only(top: 50),
            child: SizedBox(
              height: 227.h,
              width: 164.w,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Padding(
                    padding: REdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            name.s(14.sp).c(AppColors.hintTextColor).w(400),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            '$price UZS'.s(14.sp).w(600).c(AppColors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Center(
            child: GestureDetector(
              onTap: onTap,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child:
                    // CachedNetworkImage(
                    //   placeholder: (context, url) => CircularProgressIndicator(),
                    //   imageBuilder: (context, imageProvider) => ClipRRect(
                    //     borderRadius: BorderRadius.circular(16.r),
                    //     child: Image.network(
                    //       height: 149.h,
                    //       width: 148.w,
                    //       image,
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    //   errorWidget: (context, url, error) => Assets.images.add.svg(),
                    //   imageUrl: image,
                    // ),
                    Image.network(
                  image,
                  height: 149.h,
                  width: 148.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 30,
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 16,
              child: loading
                  ? const CircularProgressIndicator()
                  : const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
