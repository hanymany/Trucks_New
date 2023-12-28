import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';

part 'driver_login_state.dart';

@lazySingleton
class DriverLoginCubit extends Cubit<DriverLoginState> {
  DriverLoginCubit({required this.useCase}) : super(DriverLoginInitial());
  final LoginUseCase useCase;

  Future<void> login({required LoginRequestEntity requestEntity}) async {
    final result = await useCase(requestEntity);
    result.when(
      (success) => emit(
        DriverLoginLoadedState(loginResponseEntity: success),
      ),
      (error) => emit(
        DriverLoginFailureState(errorMsg: error.errMessage),
      ),
    );
  }
}
