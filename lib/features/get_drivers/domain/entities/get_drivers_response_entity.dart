import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_drivers_response_entity.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetDriversResponseEntity with _$GetDriversResponseEntity {
  const factory GetDriversResponseEntity({
    String? name,
    List<TripsEntity>? trips,
    int? id,
  })=_GetDriversResponseEntity;
}
@Freezed(fromJson: false, toJson: false)

class TripsEntity with _$TripsEntity {
  const factory TripsEntity({
    String? driverName,
    String? address,
    String? carModel,
    String? agentName,
    String? lastUpdate,

  })=_TripsEntity;
}
