import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_driver_location_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class UploadDriverLocationResponseEntity
    with _$UploadDriverLocationResponseEntity {
  factory UploadDriverLocationResponseEntity({
     bool? isUpload,
    String?status,
  }) = _UploadDriverLocationResponseEntity;
}
