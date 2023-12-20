import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';
import '../../../../../shared/maintance_form.dart';

class PhoneBilling extends StatelessWidget {
  const PhoneBilling({super.key});

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
                  )),
            )
          ],
          title: Text(
            'فواتير التليفونات',
            style: Styles.textStyle22,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const MaintanceForm(
              workerName: 'حسن محمد',
              permission: '',
              permissionlabel: '/اذن الصرف',
            ),
          ),
          itemCount: 8,
        ));
  }
}
