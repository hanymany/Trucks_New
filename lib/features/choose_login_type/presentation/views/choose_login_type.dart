import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/features/choose_login_type/presentation/views/widget/admin_wiget.dart';
import 'package:trucks/features/choose_login_type/presentation/views/widget/client_widget.dart';
import 'package:trucks/features/choose_login_type/presentation/views/widget/driver_widget.dart';

class ChooseLoginType extends StatelessWidget {
  const ChooseLoginType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: SizedBox(
                height: 300.h,
                child: Image.asset(
                  'assets/images/logo 360.png',
                ),
              ),
            ),
            const AdminWidget(),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
              child: Text("أو",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),),
            ),
            SizedBox(
              height: 21.h,
            ),
            const ClientWidget(),
            SizedBox(
              height: 21.h,
            ),
            const DriverWidget(),
          ],
        ),
      ),
    );
  }
}
