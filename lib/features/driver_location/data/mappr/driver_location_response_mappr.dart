import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/driver_location/data/mappr/driver_location_response_mappr.auto_mappr.dart';
import 'package:trucks/features/driver_location/data/models/upload_driver_location_response_model.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_driver_location_response_entity.dart';
@AutoMappr([
  MapType<UploadDriverLocationResponseModel,
      UploadDriverLocationResponseEntity>(),
])
class DriverLocationResponseMappr extends $DriverLocationResponseMappr {}
