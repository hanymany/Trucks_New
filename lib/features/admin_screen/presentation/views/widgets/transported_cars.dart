import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/shared/loaded_cars_form.dart';

import '../../../../../core/styles.dart';

class TransportedCars extends StatelessWidget {
  const TransportedCars({super.key});

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
            "السيارات المشحونة",
            style: Styles.textStyle22,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const TruckLoadsForm(
              tripNum: "17",
              carType: 'ليموزين',
              carModel: 'BMW',
              clientName: 'سيف محمد',
              reciverName: 'احمد حسين',
              chassisNum: 'hghk',
              driverName: 'محمود محمد',
            ),
          ),
          itemCount: 8,
        ));
  }
}
