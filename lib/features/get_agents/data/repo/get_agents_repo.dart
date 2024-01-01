import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_agents/data/data_sources/remote/get_agents_base_remote_data_source.dart';
import 'package:trucks/features/get_agents/data/mappr/get_agents_response_mappr.dart';
import 'package:trucks/features/get_agents/domain/base_repo/get_agents_base_repo.dart';
import 'package:trucks/features/get_agents/domain/entities/get_agents_response_entity.dart';

@LazySingleton(as: GetAgentsBaseRepo)
class GetAgentsRepo implements GetAgentsBaseRepo {
  final GetAgentsBaseRemoteDataSource baseRemoteDataSource;

  GetAgentsRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetAgentsResponseEntity>>>
      getAgents() async {
    final result = await baseRemoteDataSource.getAgents();
    try {
      return Right(GetAgentsResponseMappr().convertList(result));
    } catch (error) {
      if (error is DioException) {
        final failure = ServerFailure.fromDioError(error);
        return Left(failure);
      } else {
        // Handle other types of errors if needed
        return Left(ServerFailure('Unexpected error occurred'));
      }
    }
  }
}
