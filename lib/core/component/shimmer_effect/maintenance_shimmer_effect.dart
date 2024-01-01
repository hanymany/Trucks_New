import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trucks/core/extension/custom_padding.dart';
import 'package:trucks/core/styles.dart';

class MaintenanceShimmerEffect extends StatelessWidget {
  const MaintenanceShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(

        children: List.generate(
          6,
          (index) => Container(
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(),
            ),
            child: Column(
              children: List.generate(
                2,
                (index) => Container(
                  height: 10.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.darkGrey,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              ),
            ).wrapOnColumn(paddingTop: 10),
          ),
        ),
      ).wrapOnColumn(
        paddingRight: 40,
        paddingLeft: 40,
        paddingBottom: 30,
      ),
    );
  }
}
