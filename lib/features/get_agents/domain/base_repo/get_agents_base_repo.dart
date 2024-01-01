import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_agents/domain/entities/get_agents_response_entity.dart';


abstract class GetAgentsBaseRepo {
  Future<Either<Failure, List<GetAgentsResponseEntity>>> getAgents();
}
