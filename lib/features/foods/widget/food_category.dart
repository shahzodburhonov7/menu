import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';

class FoodCategoryWidget extends StatelessWidget {
  const FoodCategoryWidget({
    super.key,
    this.onTap,
    required this.image,
    required this.name,
  });

  final void Function()? onTap;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  REdgeInsets.symmetric(horizontal: 5),
        child: SizedBox(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  width: 104.w,
                  height: 104.h,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: REdgeInsets.all(8.0),
                child: name.s(14.sp).w(600).c(Colors.white).copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
