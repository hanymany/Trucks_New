import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/features/driver_location/data/data_sources/remote/upload_driver_location_base_remote_data_source.dart';
import 'package:trucks/features/driver_location/data/models/upload_dirver_location_request_model.dart';
import 'package:trucks/features/driver_location/data/models/upload_driver_location_response_model.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
@LazySingleton(as:UploadDriverLocationBaseRemoteDataSource )
class UploadDriverLocationRemoteDataSourceImpl
    implements UploadDriverLocationBaseRemoteDataSource {
  @override
  Future<UploadDriverLocationResponseModel>
      uploadDriverLocation({
    required UploadDriverLocationRequestEntity requestEntity,
  }) async {
    final driverLocationBody = UploadDriverLocationRequestModel(
      driverId: requestEntity.driverId,
      lat: requestEntity.lat,
      lang: requestEntity.lang,
    ).toJson();
    final response = await MainDio.postData(
      path: TrucksEndPoints.driverLocation,
      data: driverLocationBody,
    );
    try {
      final responseData=response.data;

      return UploadDriverLocationResponseModel.fromJson(
        responseData as Map<String, dynamic>,
      );
    } catch (e) {
      debugPrint('The Error Is $e');
      rethrow;
    }
  }
}
