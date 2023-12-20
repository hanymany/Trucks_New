import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/consts.dart';
import 'package:trucks/features/client_screen/presentation/views/widgets/client_body.dart';

class ClientHome extends StatelessWidget {
  const ClientHome({super.key});

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
      body: const ClientBody(),
    );
  }
}
