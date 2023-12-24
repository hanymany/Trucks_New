import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/features/choose_login_type/presentation/views/choose_login_type.dart';
import 'package:trucks/features/client_screen/presentation/views/widgets/tap_to_expand_container.dart';
import 'package:trucks/shared/logout_space.dart';

class ClientBody extends StatelessWidget {
  const ClientBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 10.h,
          ),
          LogoutSpace(
            text: 'أسم العميل بالكامل',
            function: () {
              navigateandfinish(
                  context: context, widget: const ChooseLoginType(),);
            },
          ),
          SizedBox(
            height: 21.h,
          ),
          Text(
            'السيارات المطلوبة',
            textAlign: TextAlign.end,
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 20.0.h),
                child: const TapToExpandContainer(),
              ),
              itemCount: 10,
            ),
          )
        ,],
      ),
    );
  }
}
