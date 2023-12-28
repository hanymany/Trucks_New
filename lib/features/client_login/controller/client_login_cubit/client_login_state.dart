part of 'client_login_cubit.dart';

@immutable
abstract class ClientLoginState {}

class ClientLoginInitial extends ClientLoginState {}
class ClientLoginLoadingState extends ClientLoginState {}
class ClientLoginLoadedState extends ClientLoginState {
  final LoginResponseEntity loginResponseEntity;
  ClientLoginLoadedState({required this.loginResponseEntity});
}
class ClientLoginFailureState extends ClientLoginState {
  final String errorMsg;
  ClientLoginFailureState({required this.errorMsg});
}
