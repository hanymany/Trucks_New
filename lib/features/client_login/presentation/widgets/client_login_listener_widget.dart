import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trucks/core/component/component.dart';
import 'package:trucks/core/const/cache_keys/cache_keys.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/features/client_login/controller/client_login_cubit/client_login_cubit.dart';
import 'package:trucks/features/client_screen/presentation/views/client_home.dart';

class ClientLoginListenerWidget extends StatelessWidget {
  const ClientLoginListenerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ClientLoginCubit, ClientLoginState>(
          listener: (context, state) async {
            if (state is ClientLoginLoadedState) {
              // di<ToastManager>().success(context.localization.login_successful);
              Future.delayed(
                const Duration(seconds: 2),
                () => navigateandfinish(
                  context: context,
                  widget: const ClientHome(),
                ),
              );
              if (state.loginResponseEntity.id != null) {
                await di<SharedPreferences>().setString(
                  CacheKeys.agentId,
                  state.loginResponseEntity.id!,
                );
                debugPrint(
                  'The Driver Id Saved Is ${await di<SharedPreferences>().setString(CacheKeys.agentId, state.loginResponseEntity.id!)}',
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
