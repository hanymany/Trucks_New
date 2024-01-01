import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_uncharged_cars/domain/base_repo/get_uncharged_cars_base_repo.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';

@lazySingleton
class GetUnChargedCarsUseCase
    implements BaseUseCase<List<GetUnChargedCarsResponseEntity>, NoParams> {
  final GetUnChargedCarsBaseRepo baseRepo;

  GetUnChargedCarsUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetUnChargedCarsResponseEntity>>> call(NoParams params) {
    return baseRepo.getUnChargedCars();
  }
}
