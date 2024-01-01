import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_received_cars_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class GetReceivedCarsResponseEntity with _$GetReceivedCarsResponseEntity{
  const factory GetReceivedCarsResponseEntity ({
    String? agentName,
    String? receiverName,
    String? carModel,
    String? carType,
    String? chaseeNumber,
})=_GetReceivedCarsResponseEntity;
}
