import 'package:dio/dio.dart';

class MainDio {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> getData({
   required String? path,
    Map<String, dynamic>? query,
  }) async {
    return await dio?.get(path!, queryParameters: query);
  }

  static Future<Response?> postData({
   required String? path,
    Map<String, dynamic>? query,
   required Map<String, dynamic>? data,
    String? language = 'en',
    String? token,
  }) async {
    return await dio?.post(path!, queryParameters: query, data: data);
  }

  static Future<Response?> putData({
   required String? path,
    Map<String, dynamic>? query,
   required Map<String, dynamic>? data,
  }) async {
    return await dio?.put(path!, queryParameters: query, data: data);
  }
}
