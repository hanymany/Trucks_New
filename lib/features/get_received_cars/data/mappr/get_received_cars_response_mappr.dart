import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/get_received_cars/data/mappr/get_received_cars_response_mappr.auto_mappr.dart';
import 'package:trucks/features/get_received_cars/data/models/get_received_cars_response_model.dart';
import 'package:trucks/features/get_received_cars/domain/entities/get_received_cars_response_entity.dart';

@AutoMappr([
  MapType<GetReceivedCarsResponseModel, GetReceivedCarsResponseEntity>(),
])
class GetReceivedCarsResponseMappr extends $GetReceivedCarsResponseMappr {}
