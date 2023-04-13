import 'dart:developer';

import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
//TODO: Gerer le fait que l'api sleep
  Api() {
    dio.options.baseUrl = 'https://honeyapi-q4jq.onrender.com';
  }
  /**
   * Tester le fonctionnement de l'apoi
   */
  Future<String> request() async {
    Response response;
    response = await dio.get('/');
    print(response.data.toString());
    // // The below request is the same as above.
    // response = await dio.get(
    //   '/test',
    //   queryParameters: {'id': 12, 'name': 'dio'},
    // );
    // print(response.data.toString());
    return response.data.toString();
  }

/**
 * Create a user account
 * @return auth token
 */
  Future<String> register(String username, String email, String pwd) async {
    Response response;
    response = await dio.post('/api/v1/auth/register',
        data: {"name": username, "email": email, "password": pwd});
    Map<String, dynamic> val = response.data;

    return val["token"];
  }
}
