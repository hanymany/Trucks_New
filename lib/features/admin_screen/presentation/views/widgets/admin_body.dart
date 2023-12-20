import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/admin_cient.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/admin_drivers.dart';
import 'package:trucks/features/admin_screen/presentation/views/widgets/reports_body.dart';
import 'package:trucks/features/choose_login_type/presentation/views/choose_login_type.dart';
import 'package:trucks/shared/logout_space.dart';

class AdminBody extends StatelessWidget {
  const AdminBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.h),
      child: Column(
        children: [
          LogoutSpace(
            text: 'أسم المسئول بالكامل',
            function: () {
              navigateandfinish(
                  context: context, widget: const ChooseLoginType());
            },
          ),
          Expanded(
            child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 15.h,
                    bottom: TabBar(
                        indicatorColor: const Color(0xffFFAA36),
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Text(
                              'التقارير',
                              style: Styles.textStyle18,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'العملاء',
                              style: Styles.textStyle18,
                            ),
                          ),
                          Tab(
                            child: Text(
                              'السائقين',
                              style: Styles.textStyle18,
                            ),
                          ),
                        ]),
                  ),
                  body: const TabBarView(
                    children: [
                      ReportsBody(),
                      AdminClient(),
                      AdminDrivers(),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
