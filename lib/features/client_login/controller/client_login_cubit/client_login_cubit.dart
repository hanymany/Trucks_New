import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
import 'package:trucks/core/shared/login/domain/use_case/login_use_case.dart';

part 'client_login_state.dart';

@lazySingleton
class ClientLoginCubit extends Cubit<ClientLoginState> {
  ClientLoginCubit({required this.useCase}) : super(ClientLoginInitial());
  final LoginUseCase useCase;

  Future<void> login({required LoginRequestEntity requestEntity}) async {
    final result = await useCase(requestEntity);
    result.when(
          (success) => emit(
        ClientLoginLoadedState(loginResponseEntity: success),
      ),
          (error) => emit(
        ClientLoginFailureState(errorMsg: error.errMessage),
      ),
    );
  }
}
