import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/get_out_pays/data/mappr/get_out_pays_cars_response_mappr.auto_mappr.dart';
import 'package:trucks/features/get_out_pays/data/models/get_out_pays_cars_response_model.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';
@AutoMappr([
  MapType<GetOutPaysCarsResponseModel, GetOutPaysCarsResponseEntity>(),
])
class GetOutPaysCarsResponseMappr extends $GetOutPaysCarsResponseMappr {}
