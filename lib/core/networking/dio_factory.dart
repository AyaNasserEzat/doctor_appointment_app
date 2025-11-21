import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/helper/shared_pref_helper.dart';
import 'package:doctor_appointment/core/networking/api_interceptore.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Acceptdoct': 'application/json',
      // 'Authorization':
      //    // 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzYyMDkyNTQwLCJleHAiOjE3NjIxNzg5NDAsIm5iZiI6MTc2MjA5MjU0MCwianRpIjoiODNOTktFWlhYWFhFZFdiYSIsInN1YiI6IjU1ODIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.D1XUraJY0XgrHw-u4uw15kvgDOwccuyCeEcZorEkzLU',
      //  'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
   
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(ApiInterceptors());
    dio?.interceptors.add(
      LogInterceptor(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
