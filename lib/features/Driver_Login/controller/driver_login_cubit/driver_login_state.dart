part of 'driver_login_cubit.dart';

@immutable
abstract class DriverLoginState {}

class DriverLoginInitial extends DriverLoginState {}
class DriverLoginLoadingState extends DriverLoginState {}
class DriverLoginLoadedState extends DriverLoginState {
  final LoginResponseEntity loginResponseEntity;
  DriverLoginLoadedState({required this.loginResponseEntity});
}
class DriverLoginFailureState extends DriverLoginState {
  final String errorMsg;
  DriverLoginFailureState({required this.errorMsg});
}
