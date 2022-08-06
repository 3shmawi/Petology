import 'package:dio/dio.dart';

import '../end_points.dart';

class DioHelper {
  late Dio dio;

  DioHelper() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);
  }

  //***************** Register and sign in ******************\\
  //** login

  Future<String?> login(String email, String password) async {
    try {
      Response response = await dio.post('auth/login', data: {
        'email': email,
        'password': password,
      });
      //print(response.data['accessToken'].toString());
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
      return response.data['accessToken'];
    } catch (error) {
      // print(error.toString());
      return null;
    }
  }

//** register
  Future<String?> register(String email, String password) async {
    try {
      Response response = await dio.post('auth/login', data: {
        'email': email,
        'password': password,
      });
      //print(response.data['accessToken'].toString());
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
      return response.data['accessToken'];
    } catch (error) {
      // print(error.toString());
      return null;
    }
  }

  //***************** get home data first section \\

  Future<dynamic> getHomeDataFirstSection() async {
    try {
      Response response = await dio.get(homeDataFirstSection);
       print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //************ get about date at home  \\

  Future<dynamic> getHomeDataAboutSection() async {
    try {
      Response response = await dio.get(about);
      //print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //************ get footer date at home  \\

  Future<dynamic> getFooterDataAboutSection() async {
    try {
      Response response = await dio.get(info);
      // print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //***************** home data pets needs *****************\\
  Future<List<dynamic>> getPetNeedsData() async {
    try {
      Response response = await dio.get(petNeeds);
      // print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //***************** find category id *****************\\
  Future<List<dynamic>> getCategoryId(int id) async {
    try {
      Response response = await dio.get(
        findCategoryId,
      );
      // print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //***************** home data *****************\\

  Future<List<dynamic>> getPetById(int id) async {
    try {
      Response response = await dio.get('categories/$id/pets?');
      // print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  Future<List<dynamic>> getFindCategory() async {
    try {
      Response response = await dio.get(find);
      //print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
      return [];
    }
  }

  //************ get filter data  \\

  Future<dynamic> getListFilter(int id) async {
    try {
      Response response = await dio.get('pets/filters/$id');

      print(response.data);
      return response.data;
    } catch (error) {
      print('dddddddddddddddddddddddddddddddddddddd' + error.toString());
      return [];
    }
  }
}
