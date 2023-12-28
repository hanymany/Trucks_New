import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class LoginResponseEntity with _$LoginResponseEntity{
  const factory LoginResponseEntity({
     String? status,
     String? message,
  })=_LoginResponseEntity;
}
