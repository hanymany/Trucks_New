import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/core/shared/login/data/mappr/login_response_mappr.auto_mappr.dart';
import 'package:trucks/core/shared/login/data/models/login_request_model.dart';
import 'package:trucks/core/shared/login/domain/entites/login_response_entity.dart';
@AutoMappr(
  [
    MapType<LoginRequestModel,LoginResponseEntity>(),
  ]
)
class LoginResponseMappr extends $LoginResponseMappr{}