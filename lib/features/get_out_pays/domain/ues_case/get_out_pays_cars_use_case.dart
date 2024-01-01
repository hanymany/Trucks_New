import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_out_pays/domain/base_repo/get_out_pays_cars_base_repo.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';

@lazySingleton
class GetOutPaysCarsUseCase
    implements BaseUseCase<List<GetOutPaysCarsResponseEntity>, NoParams> {
  final GetOutPaysCarsBaseRepo baseRepo;

  GetOutPaysCarsUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetOutPaysCarsResponseEntity>>> call(NoParams params) {
    return baseRepo.getOutPaysCars();
  }
}
