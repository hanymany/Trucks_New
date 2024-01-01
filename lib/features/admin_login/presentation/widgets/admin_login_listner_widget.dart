import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/const/cache_keys/cache_keys.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/features/admin_login/presentation/controller/admin_login_cubit/admin_login_cubit.dart';
import 'package:trucks/features/admin_screen/presentation/views/admin_home.dart';

class AdminLoginListenerWidget extends StatelessWidget {
  const AdminLoginListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AdminLoginCubit, AdminLoginState>(
          listener: (context, state) async {
            if (state is AdminLoginLoadedState) {
              // di<ToastManager>().success(context.localization.login_successful);
              Future.delayed(
                const Duration(seconds: 2),
                    () =>
                    navigateandfinish(
                      context: context,
                      widget: const AdminHome(),
                    ),
              );
              if(state.loginResponseEntity.id!=null){
                await di<SharedPreferences>()
                    .setString(CacheKeys.adminId, state.loginResponseEntity.id!);
                debugPrint(
                    'The Driver Id Saved Is ${ await di<SharedPreferences>()
                        .setString(
                        CacheKeys.adminId, state.loginResponseEntity.id!,)
                    }');

              }
            }
          },
        ),
      ],
      child: Container(),
    );
  }
}