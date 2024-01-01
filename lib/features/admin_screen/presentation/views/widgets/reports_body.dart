import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/assets_gen/assets.gen.dart';
import 'package:trucks/features/admin_screen/presentation/views/screens/reports_screen/widgets/index.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/maintenance.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/recieved_cars.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/transported_cars.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/untransported_cars.dart';

class ReportsBody extends StatelessWidget {
  const ReportsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 20.h),
      child: GridView.count(
        childAspectRatio: 1.22,
        crossAxisCount: 2,
        crossAxisSpacing: 6.w,
        mainAxisSpacing: 20.h,
        children: [
          ReportsBodyWidget(
            imagePath: MyAssets.images.transportedCars.path,
            reportName: "السيارات المشحونة",
            reportScreen: const TransportedCars(),
          ),
          ReportsBodyWidget(
            imagePath: MyAssets.images.recievedCars.path,
            reportName: "السيارات المستلمة",
            reportScreen: const ReceivedCars(),
          ),
          ReportsBodyWidget(
            imagePath: MyAssets.images.fixing.path,
            reportName: "الصيانة",
            reportScreen: const Maintenance(),
          ),
          ReportsBodyWidget(
            imagePath: MyAssets.images.ban.path,
            reportName: " غير مشحونة",
            reportScreen: const UnTransportedCars(),
          ),
          // ReportsBodyWidget(
          //   imagePath: MyAssets.images.gasStation.path,
          //   reportName: "بترول السيارات",
          //   reportScreen: const Petrol(),
          // ),
          // ReportsBodyWidget(
          //   imagePath: MyAssets.images.money.path,
          //   reportName: "المبالغ المحولة لجدة",
          //   reportScreen: const TransferredMoney(),
          // ),
          // ReportsBodyWidget(
          //   imagePath: 'assets/images/truck.png',
          //   imagePath: MyAssets.images.fixing.path,
          //   reportName: "الحمولات",
          //   reportScreen: const TruckLoads(),
          // ),
          // const ReportsBodyWidget(
          //   imagePath: 'assets/images/telephone.png',
          //   reportName: "فواتير التليفونات",
          //   reportScreen: PhoneBilling(),
          // ),
          // const ReportsBodyWidget(
          //   imagePath: 'assets/images/Expenses.png',
          //   reportName: "المصروفات",
          //   reportScreen: Expenses(),
          // ),
          // const ReportsBodyWidget(
          //   imagePath: 'assets/images/wallet.png',
          //   reportName: "المبالغ المستلمة",
          //   reportScreen: RecievedMoney(),
          // ),
        ],
      ),
    );
  }
}
