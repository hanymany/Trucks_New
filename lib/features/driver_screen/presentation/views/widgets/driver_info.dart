import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/features/Driver_Login/controller/driver_login_cubit/driver_login_cubit.dart';
import 'package:trucks/features/choose_login_type/presentation/views/choose_login_type.dart';

class DriverInfo extends StatelessWidget {
  const DriverInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1.h,
          width: double.infinity,
          color: const Color.fromARGB(155, 62, 62, 66),
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () => navigateandfinish(
                context: context,
                widget: const ChooseLoginType(),
              ),
              icon: Row(
                children: [
                  Text(
                    "تسجيل الخروج",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Icon(Icons.logout_outlined),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<DriverLoginCubit, DriverLoginState>(
                  builder: (context, state) {
                    if (state is DriverLoginLoadedState) {
                      return Text(
                        state.loginResponseEntity.name??'',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        overflow: TextOverflow.ellipsis,
                      );
                    } else {
                      return const Text('');
                    }
                  },
                ),
                SizedBox(
                  height: 8.h,
                ),
                // Text("4.000  " + "  المبلغ المدفوع ",
                //     style: TextStyle(
                //       fontSize: 12.sp,
                //       fontWeight: FontWeight.w700,
                //     ),),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Container(
          height: 1.h,
          width: double.infinity,
          color: const Color.fromARGB(155, 62, 62, 66),
        ),
      ],
    );
  }
}
