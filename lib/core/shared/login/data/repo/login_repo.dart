import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/core/shared/login/data/data_sources/remote/login_base_remote_data_source.dart';
import 'package:trucks/core/shared/login/data/mappr/login_response_mappr.dart';
import 'package:trucks/core/shared/login/domain/base_repo/login_base_Repo.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';

@LazySingleton(as: LoginBaseRepo)
class LoginRepo implements LoginBaseRepo {
  final LoginBaseRemoteDataSource remoteDataSource;

  LoginRepo({required this.remoteDataSource});

  @override
  Future<Result<LoginResponseEntity, Failure>> login({
    required LoginRequestEntity requestEntity,
  }) async {
    try {
      final result = await remoteDataSource.login(
        requestEntity: requestEntity,
      );
      return Result.success(LoginResponseMappr().convert(result));
    } catch (error) {
      if (error is DioException) {
        final failure = ServerFailure.fromDioError(error);
        return Result.error(failure);
      } else {
        // Handle other types of errors if needed
        return Result.error(ServerFailure('Unexpected error occurred'));
      }
    }
  }
}
