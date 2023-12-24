import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/admin_login/presentation/views/admin_login.dart';

class AdminWidget extends StatelessWidget {
  const AdminWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w),
      child: CustomButon(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdminLoginView(),
                ),);
          },
          height: 74.h,
          width: 271.w,
          text: "تسجيل الدخول كمسئول",
          buttonColor: const Color(0xffFFAA36),
          textColor: Colors.black,),
    );
  }
}
