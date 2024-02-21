import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  Future<dynamic> get({required String url, String? token}) async {
    try {
      Response response = await _dio.get(url,
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      if (response.statusCode == 200) {
        Map<String,dynamic> data = response.data;
        print(data);
        return data;
      } else {
        throw Exception('Error response: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }

  Future<dynamic> post({
  required String url,
  dynamic body,
  String? token,
}) async {
  try {
    Response response = await _dio.post(
      url,
      data: body,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    print(response.data);
    return response.data;
  } on DioError catch (e) {
    // Re-throw the DioError
    throw e;
  }
}


  Future<dynamic> put({required String url, dynamic body, dynamic token}) async {
    try {
      Response response = await _dio.put(url,
          data: body,
          options: Options(
              headers: {'Authorization': 'Bearer $token', 'Content-Type': 'application/x-www-form-urlencoded'}));

      Map<String, dynamic> data = response.data;
      return data;
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
