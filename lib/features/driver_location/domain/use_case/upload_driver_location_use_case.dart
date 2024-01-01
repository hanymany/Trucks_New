import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/driver_location/domain/base_repo/upload_driver_location_base_repo.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_driver_location_response_entity.dart';

@lazySingleton
class UploadDriverLocationUseCase
    implements
        BaseUseCase<UploadDriverLocationResponseEntity,
            UploadDriverLocationRequestEntity> {
  final UploadDriverLocationBaseRepo baseRepo;

  UploadDriverLocationUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, UploadDriverLocationResponseEntity>> call(
    UploadDriverLocationRequestEntity params,
  ) {
    return baseRepo.uploadDriverLocation(
      requestEntity: params,
    );
  }
}
