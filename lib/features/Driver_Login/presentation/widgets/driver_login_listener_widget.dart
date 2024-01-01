import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/const/cache_keys/cache_keys.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/features/Driver_Login/controller/driver_login_cubit/driver_login_cubit.dart';
import 'package:trucks/features/driver_screen/presentation/views/driver_screen.dart';

class DriverLoginDriverWidget extends StatelessWidget {
  const DriverLoginDriverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<DriverLoginCubit, DriverLoginState>(
          listener: (context, state) async {
            if (state is DriverLoginLoadedState) {
              // di<ToastManager>().success(context.localization.login_successful);
              Future.delayed(
                const Duration(seconds: 2),
                () => navigateandfinish(
                  context: context,
                  widget: const DiriverScrenn(),
                ),
              );
              if (state.loginResponseEntity.id != null) {
                await di<SharedPreferences>().setString(
                    CacheKeys.driverId, state.loginResponseEntity.id!,);
                debugPrint(
                  'The Driver Id Saved Is ${await di<SharedPreferences>().setString(CacheKeys.driverId, state.loginResponseEntity.id!)}',
                );
              }
            }
          },
        ),
      ],
      child: Container(),
    );
  }
}
