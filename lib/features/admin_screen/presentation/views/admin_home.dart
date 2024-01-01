import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/assets_gen/assets.gen.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/admin_body.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        centerTitle: true,
        title: MyAssets.images.logo.image(
          height: 100.h,
          fit: BoxFit.cover,
        ),
      ),
      body: const AdminBody(),
    );
  }
}
