import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/get_charged_cars/data/mappr/get_charged_cars_response_mappr.auto_mappr.dart';
import 'package:trucks/features/get_charged_cars/data/models/get_charged_cars_response_model.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';

@AutoMappr([
  MapType<GetChargedCarsResponseModel, GetChargedCarsResponseEntity>(),
])
class GetChargedCarsResponseMappr extends $GetChargedCarsResponseMappr {}
