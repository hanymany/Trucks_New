import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/styles.dart';

class ReportsBodyWidget extends StatelessWidget {
  const ReportsBodyWidget(
      {super.key,
      required this.imagePath,
      required this.reportName,
      required this.reportScreen,});

  final String imagePath;
  final String reportName;
  final Widget reportScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate_to(context: context, widget: reportScreen);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.primryColor4,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Image.asset(imagePath),
            Text(
              reportName,
              style: Styles.textStyle18,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
