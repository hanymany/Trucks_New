import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trucks/core/const/end_points/trucks_end_points.dart';
import 'package:trucks/core/dio.dart';
import 'package:trucks/core/enums/const_enums.dart';
import 'package:trucks/core/shared/login/data/data_sources/remote/login_base_remote_data_source.dart';
import 'package:trucks/core/shared/login/data/models/login_request_model.dart';
import 'package:trucks/core/shared/login/data/models/login_response_model.dart';
import 'package:trucks/core/shared/login/domain/entites/login_request_entity.dart';

@LazySingleton(as: LoginBaseRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginBaseRemoteDataSource {
  @override
  Future<LoginResponseModel> login({
    required LoginRequestEntity requestEntity,
  }) async {
    final loginBody = LoginRequestModel(
      name: requestEntity.name,
      password: requestEntity.password,
    ).toJson();
    String path;
    switch (requestEntity.loginType) {
      case LoginType.admin:
        path = TrucksEndPoints.adminLogin;
      case LoginType.driver:
        path = TrucksEndPoints.driverLogin;
      case LoginType.agent:
        path = TrucksEndPoints.agentLogin;
    }
    final response = await MainDio.postData(
      path: path,
      data: loginBody,
    );
    final responseData = response.data;

    try {
      return LoginResponseModel.fromJson(
        responseData as Map<String, dynamic>,
      );
    } catch (e) {
      debugPrint('The Error Come From Login Is $e');
      rethrow;
    }
  }
}
