import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_uncharged_cars/data/data_sources/remote/get_uncharged_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_uncharged_cars/data/mappr/get_uncharged_cars_response_mappr.dart';
import 'package:trucks/features/get_uncharged_cars/domain/base_repo/get_uncharged_cars_base_repo.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';

@LazySingleton(as: GetUnChargedCarsBaseRepo)
class GetUnChargedCarsRepo implements GetUnChargedCarsBaseRepo {
  final GetUnChargedCarsBaseRemoteDataSource baseRemoteDataSource;

  GetUnChargedCarsRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetUnChargedCarsResponseEntity>>>
      getUnChargedCars() async {
    final result = await baseRemoteDataSource.getUnChargedCars();
    try {
      return Right(GetUnChargedCarsResponseMappr().convertList(result));
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
