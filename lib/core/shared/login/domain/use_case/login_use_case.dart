import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/core/shared/login/domain/base_repo/login_base_repo.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';

@lazySingleton
class LoginUseCase
    implements BaseUseCase<LoginResponseEntity, LoginRequestEntity> {
  final LoginBaseRepo baseRepo;

  LoginUseCase({required this.baseRepo});

  @override
  Future<Result<LoginResponseEntity, Failure>> call(LoginRequestEntity params) {
    return baseRepo.login(requestEntity: params);
  }
}
