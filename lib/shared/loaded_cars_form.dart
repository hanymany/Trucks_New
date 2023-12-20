import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/styles.dart';

class TruckLoadsForm extends StatelessWidget {
  const TruckLoadsForm({
    super.key,
    required this.carType,
    required this.clientName,
    required this.reciverName,
    required this.chassisNum,
    required this.carModel,
    required this.driverName,
    required this.tripNum,
  });

  final String carType;
  final String clientName;
  final String driverName;
  final String tripNum;
  final String reciverName;
  final String chassisNum;
  final String carModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.h),
              color: AppColors.primryColor2,
              border: Border.all(color: AppColors.borderColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    clientName,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/أسم العميل",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    reciverName,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/أسم المستلم",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    driverName,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/أسم السائق",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    carModel,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/موديل السيارة",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    carType,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/النوع",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    chassisNum,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/رقم الشاسيه",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    tripNum,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/رقم الرحلة",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
