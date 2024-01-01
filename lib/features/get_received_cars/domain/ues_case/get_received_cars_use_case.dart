import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_received_cars/domain/base_repo/get_received_cars_base_repo.dart';
import 'package:trucks/features/get_received_cars/domain/entities/get_received_cars_response_entity.dart';

@lazySingleton
class GetReceivedCarsUseCase
    implements BaseUseCase<List<GetReceivedCarsResponseEntity>, NoParams> {
  final GetReceivedCarsBaseRepo baseRepo;

  GetReceivedCarsUseCase({required this.baseRepo});

  @override
  Future<Either<Failure, List<GetReceivedCarsResponseEntity>>> call(NoParams params) {
    return baseRepo.getReceivedCars();
  }
}
