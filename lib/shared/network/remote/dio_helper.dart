// import 'package:dio/dio.dart';
//
// import '../../components/constantse.dart';
//
// class DioHelper {
//   static late Dio dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://petology.orangedigitalcenteregypt.com',
//         receiveDataWhenStatusError: true,
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//           'Authorization': "Bearer $token"
//         },
//       ),
//     );
//   }
//
//   static Future<Response> getData({
//     required String url,
//    // Map<String, dynamic>? query,
//   }) async {
//
//     return await dio.get(
//       url,
//       //queryParameters: query,
//
//     );
//   }
//
//   static Future<Response> postData({
//     required String url,
//     Map<String, dynamic>? query,
//     required Map<String, dynamic> data,
//   }) async {
//
//
//     return dio.post(
//       url,
//       queryParameters: query,
//       data: data,
//     );
//   }
// }
import 'package:dio/dio.dart';


class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://petology.orangedigitalcenteregypt.com/',
          receiveDataWhenStatusError: true,
          headers: {
            'Content-Type': 'application/json'
          }
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
    String? lang = 'ar',
  }) async {
    dio.options.headers = {
      'lang': lang,
      'Authorization': token ?? '',
      'Content-Type': 'application/json',

    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic>? data,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };
    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }


  static Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic>? data,
    String? token,
  }) async {
    dio.options.headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
    };
    return dio.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}