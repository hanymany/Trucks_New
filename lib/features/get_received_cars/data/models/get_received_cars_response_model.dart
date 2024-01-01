import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_received_cars_response_model.freezed.dart';
part 'get_received_cars_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetReceivedCarsResponseModel with _$GetReceivedCarsResponseModel{
  const factory GetReceivedCarsResponseModel ({
    String? agentName,
    String? receiverName,
    String? carModel,
    @JsonKey(name: 'cartype')String? carType,
    @JsonKey(name: 'chaseeNumber')String? chaseeNumber,
  })=_GetReceivedCarsResponseModel;
  factory GetReceivedCarsResponseModel.fromJson(Map<String,dynamic>json)=>_$GetReceivedCarsResponseModelFromJson(json);
}
