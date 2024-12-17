import 'package:WaiterPro/common/colors/app_colors.dart';
import 'package:WaiterPro/common/extensions/text_extensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({
    super.key,
    required this.todayDate,
    required this.orderNumber,
    required this.delivery,
    required this.salary,
    required this.cashier,
  });

  final String todayDate;
  final String orderNumber;
  final String delivery;
  final String salary;
  final String cashier;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 10),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: REdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Sana".s(20.sp).w(500).c(AppColors.textFinal),
                    "$todayDate".s(20.sp).w(500),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: List.generate(
                    50,
                    (index) => Expanded(
                      child: Container(
                        height: 0.5,
                        color:
                            index % 2 == 0 ? Colors.grey : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Buyurtmalar soni".s(18.sp).w(500).c(AppColors.textFinal),
                  orderNumber.s(20.sp).w(500)
                ],
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Yetkazib berish".s(18.sp).w(500).c(AppColors.textFinal),
                    delivery.s(20).w(500)
                  ],
                ),
              ),
              Row(
                children: List.generate(
                  50,
                  (index) => Expanded(
                    child: Container(
                      height: 0.5,
                      color: index % 2 == 0 ? Colors.grey : Colors.transparent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "Summa".s(20).w(500).c(AppColors.textFinal),
                    Text(
                      formatCurrency("${salary} UZS"),
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: List.generate(
                    50,
                    (index) => Expanded(
                      child: Container(
                        height: 0.5,
                        color:
                            index % 2 == 0 ? Colors.grey : Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Kassir:".s(20).w(500).c(AppColors.textFinal),
                  Text(
                    formatCurrency("${cashier}"),
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: List.generate(
                  50,
                  (index) => Expanded(
                    child: Container(
                      height: 0.5,
                      color: index % 2 == 0 ? Colors.grey : Colors.transparent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  String formatCurrency(String input) {
    final numericPart = input.replaceAll(RegExp(r'[^\d]'), '');
    if (numericPart.isEmpty) return input;
    final int number = int.parse(numericPart);
    final formattedNumber =
        NumberFormat('#,###', 'en_US').format(number).replaceAll(',', ' ');
    final currencyPart = input.replaceAll(RegExp(r'\d'), '').trim();
    return "$formattedNumber $currencyPart";
  }
}
