import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_received_cars/domain/entities/get_received_cars_response_entity.dart';


abstract class GetReceivedCarsBaseRepo {
  Future<Either<Failure, List<GetReceivedCarsResponseEntity>>> getReceivedCars();
}
