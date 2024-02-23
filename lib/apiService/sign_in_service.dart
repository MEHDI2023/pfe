import 'package:dio/dio.dart';

import '../helpers/shared.dart';
import 'api.dart';


enum SignInResult {
  success,
  invalidCredentials,
  error,
}

class SignInService {
  
  Future<SignInResult> signIn(String email, String password) async {
    try {
      // Ici, nous supposons que la méthode post renvoie un Map<String, dynamic> qui est le body de la réponse
      final Map<String, dynamic> responseData = await Api().post(
        url: "${baseUrl}login",
        body: {
          'email': email,
          'password': password,
        },
      );

     
      if (responseData.containsKey('user') && responseData.containsKey('token')) {
        
        return SignInResult.success;
      } else {
        
        return SignInResult.error;
      }
    } on DioError catch (e) {
      print('DioError: $e');
      if (e.response?.statusCode == 400) {
        return SignInResult.invalidCredentials;
      } else {
        return SignInResult.error;
      }
    } catch (e) {
      print('Error: $e');
      return SignInResult.error;
    }
  }
}
