import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Location_Info extends StatelessWidget {
  const Location_Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "12 ش سكة زفتي - المحلة الكبري - الغربية",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Image.asset('assets/images/location_symbol.png'),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        Text("أخر تحديث للموقع : الثلاثاء 25 فبراير ، 6:00 مساءا",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(
          height: 16.h,
        ),
        Text("قبل 18 ساعة",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}
