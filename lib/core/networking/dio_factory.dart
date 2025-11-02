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
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}',
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
