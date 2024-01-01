import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:trucks/core/styles.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';

class CarsInfoForm extends StatelessWidget {
  const CarsInfoForm({
    super.key,
    required this.getUnChargedCarsResponseEntity,
  });

  final GetUnChargedCarsResponseEntity getUnChargedCarsResponseEntity;

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
                  Text(
                    getUnChargedCarsResponseEntity.agentName ?? '',
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
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      getUnChargedCarsResponseEntity.receiverName ?? '',
                      style: Styles.textStyle18,
                      overflow: TextOverflow.ellipsis,
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
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getUnChargedCarsResponseEntity.carModel ?? '',
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
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getUnChargedCarsResponseEntity.carType ?? '',
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
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getUnChargedCarsResponseEntity.chaseeNumber ?? '',
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
            ],
          ),
        ),
      ],
    );
  }
}
