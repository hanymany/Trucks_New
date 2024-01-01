import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';

part 'admin_login_state.dart';

class AdminLoginCubit extends Cubit<AdminLoginState> {
  AdminLoginCubit({required this.useCase}) : super(AdminLoginInitial());
  final LoginUseCase useCase;

  Future<void> login({required LoginRequestEntity requestEntity}) async {
    emit(AdminLoginLoadingState());
    final result = await useCase.call(requestEntity);
    result.fold(
          (error) => emit(
        AdminLoginFailureState(errorMsg: error.errMessage),
      ),
      (success) => emit(
        AdminLoginLoadedState(loginResponseEntity: success),
      ),);
  }
}
