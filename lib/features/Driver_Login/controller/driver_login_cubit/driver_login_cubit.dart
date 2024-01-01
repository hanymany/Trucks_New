import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';

part 'driver_login_state.dart';

class DriverLoginCubit extends Cubit<DriverLoginState> {
  DriverLoginCubit({required this.useCase}) : super(DriverLoginInitial());
  final LoginUseCase useCase;

  Future<void> login({required LoginRequestEntity requestEntity}) async {
    final result = await useCase(requestEntity);
    result.fold(
      (error) => emit(
        DriverLoginFailureState(errorMsg: error.errMessage),
      ),
      (success) => emit(
        DriverLoginLoadedState(loginResponseEntity: success),
      ),
    );
  }
}
