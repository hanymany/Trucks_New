import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_driver_location_response_entity.dart';

abstract interface class UploadDriverLocationBaseRepo {
  Future<Either<Failure,UploadDriverLocationResponseEntity>> uploadDriverLocation({
    required UploadDriverLocationRequestEntity requestEntity,
  });
}
