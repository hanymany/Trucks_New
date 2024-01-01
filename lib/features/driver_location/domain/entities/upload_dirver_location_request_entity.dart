import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_dirver_location_request_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class UploadDriverLocationRequestEntity with _$UploadDriverLocationRequestEntity {
  factory UploadDriverLocationRequestEntity({
     required int driverId,
     required String lat,
   required  String lang,

  })=_UploadDriverLocationRequestEntity;
}
