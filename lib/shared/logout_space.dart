import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/shared/page_divider.dart';

import 'logout_row.dart';

class LogoutSpace extends StatelessWidget {
  const LogoutSpace({
    super.key,
    required this.text,
    required this.function,
  });
  final String text;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageDivider(),
        SizedBox(
          height: 27.h,
        ),
        LogoutRow(
          function: function,
          text: text,
        ),
        SizedBox(
          height: 28.h,
        ),
        const PageDivider(),
      ],
    );
  }
}
