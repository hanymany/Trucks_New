import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:trucks/features/get_agents/data/mappr/get_agents_response_mappr.auto_mappr.dart';
import 'package:trucks/features/get_agents/data/models/get_agents_response_model.dart';
import 'package:trucks/features/get_agents/domain/entities/get_agents_response_entity.dart';
@AutoMappr([
  MapType<GetAgentsResponseModel, GetAgentsResponseEntity>(),
])
class GetAgentsResponseMappr extends $GetAgentsResponseMappr {}
