import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/shared/cars_info_form.dart';

import '../../../../../core/styles.dart';

class RecievedCars extends StatelessWidget {
  const RecievedCars({super.key});

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
            "السيارات المستلمة",
            style: Styles.textStyle22,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const CarsInfoForm(
              carType: 'ليموزين',
              carModel: 'BMW',
              clientName: 'سيف محمد',
              reciverName: 'احمد حسين',
              chassisNum: 'hghk',
            ),
          ),
          itemCount: 8,
        ));
  }
}
