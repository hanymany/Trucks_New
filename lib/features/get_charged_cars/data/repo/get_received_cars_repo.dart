import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_charged_cars/data/data_sources/remote/get_charged_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_charged_cars/data/mappr/get_charged_cars_response_mappr.dart';
import 'package:trucks/features/get_charged_cars/domain/base_repo/get_charged_cars_base_repo.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';

@LazySingleton(as: GetChargedCarsBaseRepo)
class GetChargedCarsRepo implements GetChargedCarsBaseRepo {
  final GetChargedCarsBaseRemoteDataSource baseRemoteDataSource;

  GetChargedCarsRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetChargedCarsResponseEntity>>>
      getChargedCars() async {
    final result = await baseRemoteDataSource.getChargedCars();
    try {
      return Right(GetChargedCarsResponseMappr().convertList(result));
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
