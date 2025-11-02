import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/helper/shared_pref_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    options.headers[SharedPrefKeys.userToken] =
       await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) != null
            ? 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
            : null;

    super.onRequest(options, handler);
  }
}
