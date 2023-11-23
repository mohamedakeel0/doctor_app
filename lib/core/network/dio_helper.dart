 import 'package:dio/dio.dart';
import 'package:doctor_app/core/network/End_point.dart';


class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,validateStatus:(_) => true,
      contentType: Headers.jsonContentType,
      responseType:ResponseType.json,

      ),
    );
  }

  static Future<Response> getdata(
      {required String url,
      Map<String, dynamic>? query,
      String lang = 'en',
      String? token}) async {
    dio.options.headers = {

      "Authorization": "Bearer $token",
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> putdata(
      {required String url,
      Map<String, dynamic>? query,
      required Map<String, dynamic> data,
      String lang = 'en',
      String? token}) async {
    dio.options.headers = {

      "Authorization": "Bearer $token",
    };
    return await dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
  static Future<Response> postdata(
      {required String url,
        Map<String, dynamic>? query,
         var data,
        String lang = 'en',
        String? token}) async {
    dio.options.headers = {

      "Authorization": "Bearer $token",
    };
    return await dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
