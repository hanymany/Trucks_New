
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/core/shared/login/domain/base_repo/login_base_repo.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';

@lazySingleton
class LoginUseCase implements BaseUseCase<LoginResponseEntity, LoginRequestEntity> {
  final LoginBaseRepo baseRepo;
  const LoginUseCase({required this.baseRepo});
  @override
  Future<Either<Failure, LoginResponseEntity>> call(LoginRequestEntity params){
    return  baseRepo.userLogin(requestEntity: params);
  }
}
