import 'package:dio/dio.dart';
import 'package:dqq/src/config/constants.dart';

import 'interceptors/custom_interceptor.dart';


class Api {
  static late Dio dio;

  // init.
  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.apiUrl,
        contentType: Headers.jsonContentType,
        validateStatus: (status) {
          return true;
        },
        headers: headers(),
      ),
    )..interceptors.add(CustomInterceptor());
  }

  // headers.
  static Map<String, dynamic> headers() => {
        'Accept': 'application/json',
        // 'Authorization': SharedData.currentUser == null
        //     ? null
        //     : 'Bearer ${SharedData.currentUser!.token}',
      };
}
