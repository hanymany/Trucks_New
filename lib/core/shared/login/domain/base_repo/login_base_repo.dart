import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';

abstract interface class LoginBaseRepo {
  Future<Either<Failure, LoginResponseEntity>> userLogin({
    required LoginRequestEntity requestEntity,
  });
}
