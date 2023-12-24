import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:trucks/core/styles.dart';

class LastAddress extends StatelessWidget {
  const LastAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 70.w,
          child: Text(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            'اخر تحديث قبل 12 ساعة',
            style: Styles.textStyle12.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(
            '12 ش سكة زفتي - المحلة الكبري - الغربية',
            textDirection: TextDirection.rtl,
            style: Styles.textStyle14,
          ),
        ),
        const Icon(Icons.location_on_outlined)
      ,],
    );
  }
}
