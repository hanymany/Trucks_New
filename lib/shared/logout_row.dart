import 'package:flutter/material.dart';

import 'package:trucks/core/styles.dart';

class LogoutRow extends StatelessWidget {
  const LogoutRow({
    super.key,
    required this.text,
    required this.function,
  });
  final String text;
  final void Function()? function;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: function,
          child: Row(
            children: [
              Text(
                'تسجيل الخروج',
                style: Styles.textStyle18,
              ),
              const Icon(Icons.logout_outlined),
            ],
          ),
        ),
        const Spacer(),
        Text(
          text,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
