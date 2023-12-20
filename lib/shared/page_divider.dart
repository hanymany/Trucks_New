import 'package:flutter/material.dart';

class PageDivider extends StatelessWidget {
  const PageDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      height: 2,
      thickness: 2,
    );
  }
}
