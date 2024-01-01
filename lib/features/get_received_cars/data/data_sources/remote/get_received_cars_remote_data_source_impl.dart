import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/get_received_cars/data/data_sources/remote/get_received_cars_base_remote_data_source.dart';
import 'package:trucks/features/get_received_cars/data/models/get_received_cars_response_model.dart';

@LazySingleton(as: GetReceivedCarsBaseRemoteDataSource)
class GetReceivedCarsRemoteDataSourceImpl
    implements GetReceivedCarsBaseRemoteDataSource {
  @override
  Future<List<GetReceivedCarsResponseModel>> getReceivedCars() async {
    final response =
        await MainDio.getData(path: TrucksEndPoints.getReceivedCars);
    try {
      final List<dynamic> responseData = response.data as List<dynamic>;
      return List<GetReceivedCarsResponseModel>.from(
        responseData.map(
          (e) => GetReceivedCarsResponseModel.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      debugPrint('The Error Of Received Cars From Remote Data Source $e');
      rethrow;
    }
  }
}
