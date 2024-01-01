import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_charged_cars_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class GetChargedCarsResponseEntity with _$GetChargedCarsResponseEntity{
  const factory GetChargedCarsResponseEntity ({
    String? agentName,
    String? receiverName,
    String? carModel,
    String? chaseeNumber,
    String? tripNumber,
    String? driverName,
    String? cartype,
})=_GetChargedCarsResponseEntity;
}
