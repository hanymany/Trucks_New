import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_out_pays_cars_response_model.freezed.dart';
part 'get_out_pays_cars_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class GetOutPaysCarsResponseModel with _$GetOutPaysCarsResponseModel{
  const factory GetOutPaysCarsResponseModel ({
    @JsonKey(name: 'stat')String? status,
    @JsonKey(name: 'emp') String? employee,
   @JsonKey(name: 'amount')  String? amount,
    @JsonKey(name: 'dat') String? date,
  })=_GetOutPaysCarsResponseModel;
  factory GetOutPaysCarsResponseModel.fromJson(Map<String,dynamic>json)=>_$GetOutPaysCarsResponseModelFromJson(json);
}
