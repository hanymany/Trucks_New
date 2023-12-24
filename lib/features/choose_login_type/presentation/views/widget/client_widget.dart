import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/client_login/presentation/views/client_login.dart';

class ClientWidget extends StatelessWidget {
  const ClientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60.w),
      child: CustomButon(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ClientLoginView(),
                ),);
          },
          height: 74.h,
          width: 271.w,
          text: "تسجيل الدخول كعميل",
          buttonColor: const Color(0xff000000),
          textColor: Colors.white,),
    );
  }
}
