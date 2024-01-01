import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_charged_cars/domain/base_repo/get_charged_cars_base_repo.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';

@lazySingleton
class GetChargedCarsUseCase
    implements BaseUseCase<List<GetChargedCarsResponseEntity>, NoParams> {
  final GetChargedCarsBaseRepo baseRepo;

  GetChargedCarsUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetChargedCarsResponseEntity>>> call(NoParams params) {
    return baseRepo.getChargedCars();
  }
}
