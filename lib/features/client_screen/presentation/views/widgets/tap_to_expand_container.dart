import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/shared/last_address.dart';

class TapToExpandContainer extends StatefulWidget {
  const TapToExpandContainer({
    super.key,
  });

  @override
  State<TapToExpandContainer> createState() => _TapToExpandContainerState();
}

class _TapToExpandContainerState extends State<TapToExpandContainer> {
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
          border: Border.all(color: AppColors.borderColor),
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
                  'أسم و موديل السيارة',
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
              secondChild: Text(
                'Widgets that have global keys reparent their subtrees when'
                ' they are moved from one location in the tree to another location in the'
                ' tree. In order to reparent its subtree, a widget must arrive at its new'
                ' location in the tree in the same animation frame in which it was removed'
                ' from its old location the tree.'
                ' Widgets that have global keys reparent their subtrees when they are moved'
                ' from one location in the tree to another location in the tree. In order'
                ' to reparent its subtree, a widget must arrive at its new location in the'
                ' tree in the same animation frame in which it was removed from its old'
                ' location the tree.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.7.sp,
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
