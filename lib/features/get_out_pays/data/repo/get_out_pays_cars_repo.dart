import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/errors.dart';
import 'package:trucks/features/get_out_pays/data/data_sources/remote/get_out_pays_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_out_pays/data/mappr/get_out_pays_cars_response_mappr.dart';
import 'package:trucks/features/get_out_pays/domain/base_repo/get_out_pays_cars_base_repo.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';

@LazySingleton(as: GetOutPaysCarsBaseRepo)
class GetOutPaysCarsRepo implements GetOutPaysCarsBaseRepo {
  final GetOutPaysCarsBaseRemoteDataSource baseRemoteDataSource;

  GetOutPaysCarsRepo({required this.baseRemoteDataSource});

  @override
  Future<Either<Failure, List<GetOutPaysCarsResponseEntity>>>
      getOutPaysCars() async {
    final result = await baseRemoteDataSource.getOutPaysCars();
    try {
      return Right(GetOutPaysCarsResponseMappr().convertList(result));
    } catch (error) {
      if (error is DioException) {
        final failure = ServerFailure.fromDioError(error);
        return Left(failure);
      } else {
        // Handle other types of errors if needed
        return Left(ServerFailure('Unexpected error occurred'));
      }
    }
  }
}
