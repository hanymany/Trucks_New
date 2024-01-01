import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_uncharged_cars_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class GetUnChargedCarsResponseEntity with _$GetUnChargedCarsResponseEntity{
  const factory GetUnChargedCarsResponseEntity ({
    String? agentName,
    String? receiverName,
    String? carModel,
    String? carType,
    String? chaseeNumber,
})=_GetUnChargedCarsResponseEntity;
}
