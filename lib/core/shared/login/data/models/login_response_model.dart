import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';
@Freezed(fromJson: true,toJson: false)
class LoginResponseModel with _$LoginResponseModel{
  const factory LoginResponseModel({
    String? status,
    String? message,
  })=_LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String,dynamic>json)=>_$LoginResponseModelFromJson(json);

}
