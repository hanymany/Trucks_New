import 'package:multiple_result/multiple_result.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';

abstract interface class LoginBaseRepo {
  Future<Result<LoginResponseEntity, Failure>> login({
    required LoginRequestEntity requestEntity,
  });
}
