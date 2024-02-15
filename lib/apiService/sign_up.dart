import 'package:dio/dio.dart';

import '../helpers/shared.dart';
import 'api.dart';


class SignUpService {
  static Future<void> signUp({
    required String email,
    required String password,
    required String name,
    required String firstName,
    required String Phone
  }) async {
    try {
      var response = await Api().post(
        url: baseUrl+"signup", // Replace with your actual API endpoint
        body: {
          "name": name,
          "email": email,
          "password": password,
          "phone": Phone,
          "firstName":firstName,
        },
      );
      
      if (response.statusCode == 200) {
        // Handle success
      } else if (response.statusCode == 400) {
        // Handle case where email or name is already in use
        throw Exception('Email or name is already in use.');
      } else {
        // Handle other statuses
      }
    } on DioError catch (dioError) {
      // Handle Dio-specific errors
      print("Failed to sign up user: ${dioError.response?.data}");
    } catch (error) {
      // Handle any other errors that may occur
      print("An unexpected error occurred: $error");
    }
  }

  static Api() {}
}
