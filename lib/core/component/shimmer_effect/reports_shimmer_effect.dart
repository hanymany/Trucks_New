import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trucks/core/extension/custom_padding.dart';
import 'package:trucks/core/styles.dart';

class ReportsShimmerEffect extends StatelessWidget {
  const ReportsShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: List.generate(
          4,
          (index) => Container(
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                4,
                (index) => Container(
                  height: 10.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.darkGrey,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              ),
            ).wrapOnColumn(paddingTop: 15),
          ),
        ),
      ).wrapOnColumn(
          paddingRight: 40, paddingLeft: 40, paddingTop: 10, paddingBottom: 30,),
    );
  }
}
