import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/consts.dart';

class SelectDriverCars extends StatelessWidget {
  const SelectDriverCars({super.key});

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
      body: Column(
        children: [],
      ),
    );
  }
}
