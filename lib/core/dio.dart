import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:labor_recuirment/core/consts.dart';

class Maindio {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response?> getdata({
    @required String? path,
    Map<String, dynamic>? query,
  }) async {
    return await dio?.get(path!, queryParameters: query);
  }

  static Future<Response?> postdata({
    @required String? path,
    Map<String, dynamic>? query,
    @required Map<String, dynamic>? data,
    String? language = 'en',
    String? token,
  }) async {
    return await dio?.post(path!, queryParameters: query, data: data);
  }

  static Future<Response?> putdata({
    @required String? path,
    Map<String, dynamic>? query,
    @required Map<String, dynamic>? data,
  }) async {
    return await dio?.put(path!, queryParameters: query, data: data);
  }
}
