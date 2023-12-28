import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trucks/core/enums/const_enums.dart';
part 'login_request_entity.freezed.dart';
@Freezed(fromJson: false,toJson: false)
class LoginRequestEntity with _$LoginRequestEntity{
  const factory LoginRequestEntity({
    required String name,
    required String password,
    required  LoginType loginType,

  })=_LoginRequestEntity;
}
