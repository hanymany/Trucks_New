import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_uncharged_cars_response_model.freezed.dart';
part 'get_uncharged_cars_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetUnChargedCarsResponseModel with _$GetUnChargedCarsResponseModel{
  const factory GetUnChargedCarsResponseModel ({
    String? agentName,
    String? receiverName,
    String? carModel,
    @JsonKey(name: 'cartype')String? carType,
    @JsonKey(name: 'chaseeNumber')String? chaseeNumber,
  })=_GetUnChargedCarsResponseModel;
  factory GetUnChargedCarsResponseModel.fromJson(Map<String,dynamic>json)=>_$GetUnChargedCarsResponseModelFromJson(json);
}
