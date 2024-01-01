import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/get_charged_cars/data/data_sources/remote/get_charged_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_charged_cars/data/models/get_charged_cars_response_model.dart';

@LazySingleton(as: GetChargedCarsBaseRemoteDataSource)
class GetChargedCarsRemoteDataSourceImpl
    implements GetChargedCarsBaseRemoteDataSource {
  @override
  Future<List<GetChargedCarsResponseModel>> getChargedCars() async {
    final response =
        await MainDio.getData(path: TrucksEndPoints.getChargedCars);
    try {
      final List<dynamic> responseData = response.data as List<dynamic>;
      return List<GetChargedCarsResponseModel>.from(
        responseData.map(
          (e) => GetChargedCarsResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      debugPrint('The Error Of Charged Cars From Remote Data Source $e');
      rethrow;
    }
  }
}
