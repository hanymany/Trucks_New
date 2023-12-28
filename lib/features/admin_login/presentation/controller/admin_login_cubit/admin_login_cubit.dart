import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';

part 'admin_login_state.dart';

@lazySingleton
class AdminLoginCubit extends Cubit<AdminLoginState> {
  AdminLoginCubit({required this.useCase}) : super(AdminLoginInitial());
  final LoginUseCase useCase;

  Future<void> login({required LoginRequestEntity requestEntity}) async {
    final result = await useCase(requestEntity);
    result.when(
      (success) => emit(
        AdminLoginLoadedState(loginResponseEntity: success),
      ),
      (error) => emit(
        AdminLoginFailureState(errorMsg: error.errMessage),
      ),
    );
  }
}
