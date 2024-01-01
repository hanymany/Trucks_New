import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_driver_location_response_model.freezed.dart';

part 'upload_driver_location_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class UploadDriverLocationResponseModel
    with _$UploadDriverLocationResponseModel {
  const factory UploadDriverLocationResponseModel({
    @JsonKey(name: 'saved') bool? isUpload,
    @JsonKey(name: 'stat')    String?status,

  }) = _UploadDriverLocationResponseEntity;

  factory UploadDriverLocationResponseModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UploadDriverLocationResponseModelFromJson(json);
}
