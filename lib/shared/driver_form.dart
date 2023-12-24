import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:trucks/core/styles.dart';

class DriverForm extends StatelessWidget {
  const DriverForm({
    super.key,
    required this.workerName,
    required this.permission,
    required this.permissionlabel,
  });

  final String workerName;
  final String permission;
  final String permissionlabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.h),
              color: AppColors.primryColor2,
              border: Border.all(color: AppColors.borderColor,),),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    workerName,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    '/أسم السائق',
                    style: Styles.textStyle16,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    permission,
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Text(
                    permissionlabel,
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
