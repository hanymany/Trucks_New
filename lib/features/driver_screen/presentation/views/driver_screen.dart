import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/features/driver_screen/presentation/views/widgets/driver_info.dart';
import 'package:trucks/features/driver_screen/presentation/views/widgets/location_info.dart';
import 'package:trucks/features/driver_screen/presentation/views/widgets/refresh_widget.dart';

class DiriverScrenn extends StatelessWidget {
  const DiriverScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Image.asset('assets/images/logo 360.png'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            children: [
              Driver_Info(),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 90.h,
                width: 366.w,
                child: Text(
                    "             لا تنسي تحديث موقعك  \n        عند كل نقطة فحص علي الاقل  ",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 60.h,
              ),
              refresh_widget(),
              SizedBox(
                height: 45.h,
              ),
              Location_Info(),
            ],
          ),
        ),
      ),
    );
  }
}
