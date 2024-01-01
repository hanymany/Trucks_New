import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/get_out_pays/data/data_sources/remote/get_out_pays_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_out_pays/data/models/get_out_pays_cars_response_model.dart';

@LazySingleton(as: GetOutPaysCarsBaseRemoteDataSource)
class GetOutPaysCarsRemoteDataSourceImpl
    implements GetOutPaysCarsBaseRemoteDataSource {
  @override
  Future<List<GetOutPaysCarsResponseModel>> getOutPaysCars() async {
    final response =
        await MainDio.getData(path: TrucksEndPoints.getOutPaysCars);
    try {
      final List<dynamic> responseData = response.data['pays'] as List<dynamic>;
      return List<GetOutPaysCarsResponseModel>.from(
        responseData.map(
          (e) => GetOutPaysCarsResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      debugPrint('The Error Of OutPays Cars From Remote Data Source $e');
      rethrow;
    }
  }
}
