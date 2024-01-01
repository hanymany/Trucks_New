import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/get_agents/data/data_sources/remote/get_agents_base_remote_data_source.dart';
import 'package:trucks/features/get_agents/data/models/get_agents_response_model.dart';

@LazySingleton(as: GetAgentsBaseRemoteDataSource)
class GetAgentsRemoteDataSourceImpl
    implements GetAgentsBaseRemoteDataSource {
  @override
  Future<List<GetAgentsResponseModel>> getAgents() async {
    final response =
        await MainDio.getData(path: TrucksEndPoints.getAgents);
    try {
      final List<dynamic> responseData = response.data as List<dynamic>;
      return List<GetAgentsResponseModel>.from(
        responseData.map(
          (e) => GetAgentsResponseModel.fromJson(
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
