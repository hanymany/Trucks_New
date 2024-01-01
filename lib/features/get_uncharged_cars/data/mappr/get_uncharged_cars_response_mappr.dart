import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/get_uncharged_cars/data/mappr/get_uncharged_cars_response_mappr.auto_mappr.dart';
import 'package:trucks/features/get_uncharged_cars/data/models/get_uncharged_cars_response_model.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';
@AutoMappr([
  MapType<GetUnChargedCarsResponseModel, GetUnChargedCarsResponseEntity>(),
])
class GetUnChargedCarsResponseMappr extends $GetUnChargedCarsResponseMappr {}
