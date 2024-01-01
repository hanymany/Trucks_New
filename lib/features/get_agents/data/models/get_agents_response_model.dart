import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_agents_response_model.freezed.dart';
part 'get_agents_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetAgentsResponseModel with _$GetAgentsResponseModel{
  const factory GetAgentsResponseModel ({
    String? driverName,
    String? address,
    String? carModel,
    String? agentName,
    String? lastUpdate,
    String? tripNumber,
    String? lat,
    String? lang,
    String? carType,
    int? ownerId,
  })=_GetAgentsResponseModel;
  factory GetAgentsResponseModel.fromJson(Map<String,dynamic>json)=>_$GetAgentsResponseModelFromJson(json);
}
