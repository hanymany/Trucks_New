import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_agents_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetAgentsResponseEntity with _$GetAgentsResponseEntity {
  const factory GetAgentsResponseEntity({
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
  }) = _GetAgentsResponseEntity;
}
