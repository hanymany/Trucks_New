import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';


abstract class GetUnChargedCarsBaseRepo {
  Future<Either<Failure, List<GetUnChargedCarsResponseEntity>>> getUnChargedCars();
}
