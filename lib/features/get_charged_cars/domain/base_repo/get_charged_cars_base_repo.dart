import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';


abstract class GetChargedCarsBaseRepo {
  Future<Either<Failure, List<GetChargedCarsResponseEntity>>> getChargedCars();
}
