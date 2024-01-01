import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_received_cars/data/data_sources/remote/get_received_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_received_cars/data/mappr/get_received_cars_response_mappr.dart';
import 'package:trucks/features/get_received_cars/domain/base_repo/get_received_cars_base_repo.dart';
import 'package:trucks/features/get_received_cars/domain/entities/get_received_cars_response_entity.dart';

@LazySingleton(as: GetReceivedCarsBaseRepo)
class GetReceivedCarsRepo implements GetReceivedCarsBaseRepo {
  final GetReceivedCarsBaseRemoteDataSource baseRemoteDataSource;

  GetReceivedCarsRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetReceivedCarsResponseEntity>>>
      getReceivedCars() async {
    final result = await baseRemoteDataSource.getReceivedCars();
    try {
      return Right(GetReceivedCarsResponseMappr().convertList(result));
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
