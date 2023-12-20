import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/Transferred_money.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/expenses.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/maintenance.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/petrol.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/phone_billing.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/recieved_cars.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/recieved_money.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/transported_cars.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/trucks_loads.dart';
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
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/transported cars.png',
            reportName: "السيارات المشحونة",
            reportScreen: const TransportedCars(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/recieved_cars.png',
            reportName: "السيارات المستلمة",
            reportScreen: const RecievedCars(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/fixing.png',
            reportName: "الصيانة",
            reportScreen: const Maintenance(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/ban.png',
            reportName: " غير مشحونة",
            reportScreen: const UnTransportedCars(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/gas-station.png',
            reportName: "بترول السيارات",
            reportScreen: const Petrol(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/money.png',
            reportName: "المبالغ المحولة لجدة",
            reportScreen: const TransferredMoney(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/truck.png',
            reportName: "الحمولات",
            reportScreen: const TruckLoads(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/telephone.png',
            reportName: "فواتير التليفونات",
            reportScreen: const PhoneBilling(),
          ),
          ReportWidget(
            context: context,
            imageUrl: 'assets/images/Expenses.png',
            reportName: "المصروفات",
            reportScreen: const Expenses(),
          ),
          ReportWidget(
            context: context,

            imageUrl: 'assets/images/wallet.png',
            reportName: "المبالغ المستلمة",
            reportScreen:
                const RecievedMoney(), ////////////////////////////////////////////
          ),
        ],
      ),
    );
  }

  InkWell ReportWidget({
    required String imageUrl,
    required String reportName,
    required Widget reportScreen,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () {
        navigate_to(context: context, widget: reportScreen);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.primryColor4,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Image.asset(imageUrl),
            // SizedBox(height: 8.h),
            Text(
              reportName,
              style: Styles.textStyle18,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
