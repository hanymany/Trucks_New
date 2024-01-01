import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:trucks/core/styles.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';

class TruckLoadsForm extends StatelessWidget {
  const TruckLoadsForm({
    super.key,
    required this.getChargedCarsResponseEntity,
  });

  final GetChargedCarsResponseEntity getChargedCarsResponseEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.h),
            color: AppColors.primryColor2,
            border: Border.all(
              color: AppColors.borderColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      getChargedCarsResponseEntity.agentName??'',
                      style: Styles.textStyle18,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,

                    ),
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
                  Expanded(
                    child: Text(
                      getChargedCarsResponseEntity.receiverName??'',
                      style: Styles.textStyle18,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,

                    ),
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
                    getChargedCarsResponseEntity.driverName??'',
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
                    getChargedCarsResponseEntity.carModel??'',
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
                    getChargedCarsResponseEntity.cartype??'',
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
              ), Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getChargedCarsResponseEntity.carModel??'',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    "/الموديل",
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getChargedCarsResponseEntity.chaseeNumber??'',
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
                    getChargedCarsResponseEntity.tripNumber??'',
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
