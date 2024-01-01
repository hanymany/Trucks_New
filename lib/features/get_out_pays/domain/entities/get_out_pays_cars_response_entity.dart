import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_out_pays_cars_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class GetOutPaysCarsResponseEntity with _$GetOutPaysCarsResponseEntity{
  const factory GetOutPaysCarsResponseEntity ({
    String? status,
    String? employee,
    String? amount,
    String? date,
})=_GetOutPaysCarsResponseEntity;
}
