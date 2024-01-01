import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_charged_cars_response_model.freezed.dart';
part 'get_charged_cars_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetChargedCarsResponseModel with _$GetChargedCarsResponseModel{
  const factory GetChargedCarsResponseModel ({
    String? agentName,
    String? receiverName,
    String? carModel,
    @JsonKey(name: 'chaseeNumber')String? chaseeNumber,
    String? tripNumber,
    String? driverName,
    String? cartype,

  })=_GetChargedCarsResponseModel;
  factory GetChargedCarsResponseModel.fromJson(Map<String,dynamic>json)=>_$GetChargedCarsResponseModelFromJson(json);
}
