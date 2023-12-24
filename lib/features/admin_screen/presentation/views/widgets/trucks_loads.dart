import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/shared/driver_form.dart';

class TruckLoads extends StatelessWidget {
  const TruckLoads({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const SizedBox(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 32.h,
                  ),),
            )
          ,],
          title: Text(
            "الحمولات",
            style: Styles.textStyle22,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DriverForm(
              workerName: 'حسن محمد',
              permission: "17",
              permissionlabel: "/رقم الرحلة",
            ),
          ),
          itemCount: 8,
        ),);
  }
}
