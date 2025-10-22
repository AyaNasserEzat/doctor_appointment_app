import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handel(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'Connection timeout with ApiServer');

        case DioExceptionType.sendTimeout:
          return ApiErrorModel(message: 'Send timeout with ApiServer');

        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(message: 'Receive timeout with ApiServer');

        case DioExceptionType.badResponse:
          return _handelError(error.response?.data);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to ApiServer was canceld');

        case DioExceptionType.unknown:
          if (error.message!.contains('SocketException')) {
            return ApiErrorModel(message: 'No Internet Connection');
          }
          return ApiErrorModel(message: 'Unexpected Error, Please try again!');
        default:
          return ApiErrorModel(
            message: 'Opps There was an Error, Please try again',
          );
      }
    } else {
      return ApiErrorModel(message: 'unexpected error occurred');
    }
  }
}

ApiErrorModel _handelError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? "unknown error occurred",
    code: data['code'],
  );
}
