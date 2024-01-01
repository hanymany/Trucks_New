import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_dirver_location_request_model.freezed.dart';
part 'upload_dirver_location_request_model.g.dart';

@Freezed(fromJson: false,toJson: true)
class UploadDriverLocationRequestModel with _$UploadDriverLocationRequestModel {
  factory UploadDriverLocationRequestModel({
     required int driverId,
     required String lat,
   required  String lang,

  })=_UploadDriverLocationRequestModel;
}
