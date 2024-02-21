import 'package:dio/dio.dart';


import '../helpers/shared.dart';
import 'api.dart';

// Define an enum to represent the sign-up result
enum SignUpResult {
  success,
  emailOrNameInUse,
  otherError,
}

class SignUpService {
  static Future<SignUpResult>   signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
       final Map<String, dynamic> responseData= await Api().post(
        url: baseUrl + "signup", // Replace with your actual API endpoint
        body: {
          "name": name,
          "email": email,
          "password": password,
        },
      );
      
      if (responseData.containsKey('user') && responseData.containsKey('token')) {
        
        return SignUpResult.success;
      } else if (responseData['message']=="Email or name already in use.") {
        
        return SignUpResult.emailOrNameInUse;
      }else
      {
        return SignUpResult.otherError;
      }
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 400) {
        // Handle the case where the email already exists
        return SignUpResult.emailOrNameInUse;
      } else if (dioError.response?.statusCode == 500) {
        // Handle the case where there's a server error
        return SignUpResult.otherError;
      } else {
        // Handle other Dio-specific errors
        return SignUpResult.otherError;
      }
    } catch (error) {
      // Handle any other errors that may occur
      return SignUpResult.otherError;
    }
  }
}
