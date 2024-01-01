import 'package:dartz/dartz.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';


abstract class GetOutPaysCarsBaseRepo {
  Future<Either<Failure, List<GetOutPaysCarsResponseEntity>>> getOutPaysCars();
}
