import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/shared/last_address.dart';

class TapToExpandContainerDriver extends StatefulWidget {
  const TapToExpandContainerDriver({
    super.key,
  });

  @override
  State<TapToExpandContainerDriver> createState() =>
      _TapToExpandContainerDriverState();
}

class _TapToExpandContainerDriverState
    extends State<TapToExpandContainerDriver> {
  bool isExpanded2 = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          isExpanded2 = !isExpanded2;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(
          horizontal: isExpanded2 ? 10.h : 0,
        ),
        padding: EdgeInsets.all(15.h),
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1200),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderColor, width: 2.w),
          borderRadius: BorderRadius.all(
            Radius.circular(8.h),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  isExpanded2
                      ? Icons.keyboard_arrow_down
                      : Icons.keyboard_arrow_up,
                  color: Colors.black,
                  size: 27.h,
                ),
                Text(
                  'أسم السائق كاملا',
                  style: Styles.textStyle18,
                ),
              ],
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              'رقم الشاحنة الناقلة',
              style: Styles.textStyle14,
            ),
            const LastAddress(),
            if (isExpanded2) const SizedBox() else const SizedBox(height: 20),
            AnimatedCrossFade(
              firstChild: const Text(
                '',
                style: TextStyle(
                  fontSize: 0,
                ),
              ),
              secondChild: Container(
                padding: EdgeInsets.all(15.h),
                decoration: BoxDecoration(
                    color: AppColors.primryColor,
                    borderRadius: BorderRadius.circular(8.h),),
                child: Row(
                  children: [
                    Text(
                      'أسم العميل',
                      style: Styles.textStyle14,
                    ),
                    //
                    const Spacer(),
                    Text(
                      'أسم و موديل السيارة',
                      style: Styles.textStyle14,
                    )
                  ,],
                ),
              ),
              crossFadeState: isExpanded2
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 1200),
              reverseDuration: Duration.zero,
              sizeCurve: Curves.fastLinearToSlowEaseIn,
            ),
          ],
        ),
      ),
    );
  }
}
