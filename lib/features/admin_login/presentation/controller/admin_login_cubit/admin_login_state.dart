part of 'admin_login_cubit.dart';

@immutable
abstract class AdminLoginState {}

class AdminLoginInitial extends AdminLoginState {}
class AdminLoginLoadingState extends AdminLoginState {}
class AdminLoginLoadedState extends AdminLoginState {
  final LoginResponseEntity loginResponseEntity;
  AdminLoginLoadedState({required this.loginResponseEntity});
}
class AdminLoginFailureState extends AdminLoginState {
  final String errorMsg;
  AdminLoginFailureState({required this.errorMsg});
}
