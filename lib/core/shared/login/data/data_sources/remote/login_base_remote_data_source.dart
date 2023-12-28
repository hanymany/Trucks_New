import 'package:trucks/core/shared/login/data/models/login_response_model.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';

abstract interface class LoginBaseRemoteDataSource {
  Future<LoginResponseModel> login({
    required LoginRequestEntity requestEntity,
  });
}
