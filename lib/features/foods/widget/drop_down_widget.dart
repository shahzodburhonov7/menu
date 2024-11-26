import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_menu/common/extensions/text_extensions.dart';
import 'package:restaurants_menu/features/foods/cubit/foods_cubit.dart';

class DropDownButtonWidget extends StatelessWidget {
  const DropDownButtonWidget({
    super.key,
    required this.tableNumber,
    required this.tableList,
  });
  final int tableNumber;
  final List<dynamic> tableList;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      hint: "$tableNumber".s(18.sp),
      onChanged: (value) {
        context.read<FoodsCubit>().selectTable(
              tableNumber: value!,
            );
      },
      items: tableList.map<DropdownMenuItem<int>>((table) {
        return DropdownMenuItem<int>(
          onTap: () {
            context.read<FoodsCubit>().tableOrder(
                  number: table["cart_id"],
                ); //
          },
          value: table["number"],
          child: Text(
            "${table["number"]}",
            style: const TextStyle(color: Colors.blue),
          ),
        );
      }).toList(),
    );
  }
}
