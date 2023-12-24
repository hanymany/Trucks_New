import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/Driver_Login/presentation/views/driver_login.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.h),
      child: CustomButon(
          onTap: () {
            navigateandfinish(
                context: context, widget: const DriverLoginView(),);
          },
          height: 74.h,
          width: 271.w,
          text: "تسجيل الدخول كسائق",
          buttonColor: const Color(0xffFFCC86),
          textColor: Colors.black,),
    );
  }
}
