import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/tap_to_expand_container_driver.dart';

class AdminDrivers extends StatelessWidget {
  const AdminDrivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18.h,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(bottom: 20.0.h),
              child: const TapToExpandContainerDriver(),
            ),
          ),
        ),
      ],
    );
  }
}
