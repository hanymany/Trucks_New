import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';
import 'package:trucks/features/Driver_Login/controller/driver_login_cubit/driver_login_cubit.dart';
import 'package:trucks/features/admin_login/presentation/controller/admin_login_cubit/admin_login_cubit.dart';
import 'package:trucks/features/client_login/controller/client_login_cubit/client_login_cubit.dart';
import 'package:trucks/features/driver_location/domain/use_case/upload_driver_location_use_case.dart';
import 'package:trucks/features/driver_location/presentation/controller/upload_driver_location_cubit/upload_driver_location_cubit.dart';
import 'package:trucks/features/splash/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AdminLoginCubit>(
              create: (context) => AdminLoginCubit(
                useCase: di<LoginUseCase>(),
              ),
              lazy: false,

            ),
            BlocProvider<DriverLoginCubit>(
              create: (context) => DriverLoginCubit(
                useCase: di<LoginUseCase>(),
              ),
              lazy: false,
            ),
            BlocProvider<ClientLoginCubit>(
              create: (context) => ClientLoginCubit(
                useCase: di<LoginUseCase>(),
              ),
              lazy: false,

            ),
            BlocProvider<UploadDriverLocationCubit>(
              create: (context) => UploadDriverLocationCubit(
                useCase: di<UploadDriverLocationUseCase>(),
              ),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Trucks',
            theme: ThemeData(
              fontFamily: 'Cairo',
              useMaterial3: true,
            ),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
