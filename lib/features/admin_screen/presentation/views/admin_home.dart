import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/admin_body.dart';

import '../../../../core/consts.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: Image.asset(
          Assets.logo,
          fit: BoxFit.fill,
          height: 80.h,
        ),
      ),
      body: const AdminBody(),
    );
  }
}
