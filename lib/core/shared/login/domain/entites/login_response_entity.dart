import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class LoginResponseEntity with _$LoginResponseEntity{
  const factory LoginResponseEntity({
    bool? result,
    bool? isAdmin,
    bool? isAgent,
    bool? isDriver,
    String? id,
    String? name,
    List<ErrorsEntity>? errors,
  })=_LoginResponseEntity;
}
@Freezed(fromJson: false,toJson: false)
class ErrorsEntity with _$ErrorsEntity{
  const factory ErrorsEntity({
    String? errorMsg,
  })=_ErrorsEntity;
}
