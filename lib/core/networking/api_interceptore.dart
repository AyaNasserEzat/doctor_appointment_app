import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/helper/shared_pref_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    options.headers['Authorization'] =
       await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) != null
            ? 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
            : null;
    //    final token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

    // if (token != null && token.isNotEmpty) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }
}
