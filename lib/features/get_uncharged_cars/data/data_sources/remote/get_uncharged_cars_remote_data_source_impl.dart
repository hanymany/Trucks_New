import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/get_uncharged_cars/data/data_sources/remote/get_uncharged_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_uncharged_cars/data/models/get_uncharged_cars_response_model.dart';

@LazySingleton(as: GetUnChargedCarsBaseRemoteDataSource)
class GetUnChargedCarsRemoteDataSourceImpl
    implements GetUnChargedCarsBaseRemoteDataSource {
  @override
  Future<List<GetUnChargedCarsResponseModel>> getUnChargedCars() async {
    final response =
        await MainDio.getData(path: TrucksEndPoints.getUnChargedCars);
    try {
      final List<dynamic> responseData = response.data as List<dynamic>;
      return List<GetUnChargedCarsResponseModel>.from(
        responseData.map(
          (e) => GetUnChargedCarsResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      debugPrint('The Error Of UnCharged Cars From Remote Data Source $e');
      rethrow;
    }
  }
}
