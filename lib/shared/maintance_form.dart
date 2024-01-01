import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:trucks/core/styles.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';

class MaintanceForm extends StatelessWidget {
  const MaintanceForm({
    super.key,
    required this.getOutPaysCarsResponseEntity,
  });

  final GetOutPaysCarsResponseEntity getOutPaysCarsResponseEntity;

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getOutPaysCarsResponseEntity.employee??'',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    '/أسم الموظف',
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getOutPaysCarsResponseEntity.employee??'',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    getOutPaysCarsResponseEntity.employee??'',
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
