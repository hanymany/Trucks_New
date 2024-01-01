import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class LoginResponseModel with _$LoginResponseModel{
  const factory LoginResponseModel({
    bool? result,
    bool? isAdmin,
    bool? isAgent,
    bool? isDriver,

    String? id,
    String? name,
    List<ErrorsModel>? errors,
  })=_LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String,dynamic>json)=>_$LoginResponseModelFromJson(json);
}
@Freezed(fromJson: true,toJson: false)
class ErrorsModel with _$ErrorsModel{
  const factory ErrorsModel({
    @JsonKey(name: 'errorMSG')String? errorMsg,
  })=_ErrorsModel;
  factory ErrorsModel.fromJson(Map<String,dynamic>json)=>_$ErrorsModelFromJson(json);

}
