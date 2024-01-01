import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_agents/domain/base_repo/get_agents_base_repo.dart';
import 'package:trucks/features/get_agents/domain/entities/get_agents_response_entity.dart';

@lazySingleton
class GetAgentsUseCase
    implements BaseUseCase<List<GetAgentsResponseEntity>, NoParams> {
  final GetAgentsBaseRepo baseRepo;

  GetAgentsUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetAgentsResponseEntity>>> call(NoParams params) {
    return baseRepo.getAgents();
  }
}
