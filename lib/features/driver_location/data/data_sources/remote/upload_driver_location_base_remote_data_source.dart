import 'package:trucks/features/driver_location/data/models/upload_driver_location_response_model.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';

abstract interface class UploadDriverLocationBaseRemoteDataSource {
  Future< UploadDriverLocationResponseModel>
      uploadDriverLocation({
    required UploadDriverLocationRequestEntity requestEntity,
  });
}
