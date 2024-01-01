import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/driver_location/data/data_sources/remote/upload_driver_location_base_remote_data_source.dart';
import 'package:trucks/features/driver_location/data/mappr/driver_location_response_mappr.dart';
import 'package:trucks/features/driver_location/domain/base_repo/upload_driver_location_base_repo.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_driver_location_response_entity.dart';

@LazySingleton(as: UploadDriverLocationBaseRepo)
class UploadDriverLocationRepo implements UploadDriverLocationBaseRepo {
  final UploadDriverLocationBaseRemoteDataSource baseRemoteDataSource;

  const UploadDriverLocationRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, UploadDriverLocationResponseEntity>>
      uploadDriverLocation({
    required UploadDriverLocationRequestEntity requestEntity,
  }) async {
    final result = await baseRemoteDataSource.uploadDriverLocation(
      requestEntity: requestEntity,
    );
    try {
      return Right(
        DriverLocationResponseMappr().convert(result),
      );
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
