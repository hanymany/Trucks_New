import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/Driver_Login/presentation/views/driver_login.dart';

class refresh_widget extends StatelessWidget {
  const refresh_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate_to(context: context, widget: DriverLoginView());
      },
      child: CircleAvatar(
          backgroundColor: Color(0xffFFCC86),
          radius: 60.r,
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55.r,
              child: Image.asset('assets/images/refresh_symbol.png'))),
    );
  }
}
