import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/choose_login_type/presentation/views/choose_login_type.dart';

class Driver_Info extends StatelessWidget {
  const Driver_Info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1.h,
          width: double.infinity,
          color: const Color.fromARGB(155, 62, 62, 66),
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                navigate_to(context: context, widget: const ChooseLoginType());
              },
              child: Row(children: [
                Text("تسجيل الخروج",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),),
                const Icon(Icons.logout_outlined)
              ,],),
            ),
            SizedBox(
              width: 93.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "أسم السائق بالكامل",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text("4.000  " + "  المبلغ المدفوع ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Container(
          height: 1.h,
          width: double.infinity,
          color: const Color.fromARGB(155, 62, 62, 66),
        ),
      ],
    );
  }
}
