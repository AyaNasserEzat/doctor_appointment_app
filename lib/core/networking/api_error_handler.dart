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
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: 'No Internet Connection');

        case DioExceptionType.badResponse:
          return _handelError(error.response);
        case DioExceptionType.cancel:
          return ApiErrorModel(message: 'Request to ApiServer was canceld');

        case DioExceptionType.unknown:
          if (error.message!.contains('SocketException')) {
            return ApiErrorModel(message: 'network layer.');
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

// ApiErrorModel _handelError(dynamic data) {
//   return ApiErrorModel(
//     message: data['message'] ?? "unknown error occurred",
//     code: data['code'],
//     errors: data['data']
//   );
// }
ApiErrorModel _handelError(dynamic  response) {
  if (response == null) {
    return ApiErrorModel(message: "No response from server");
  }

  final statusCode = response.statusCode ?? 0;
  final data = response.data;

  String message = "Unknown error occurred";

  if (data != null && data is Map<String, dynamic> && data['message'] != null) {
    message = data['message'];
  } else {
    // Default messages based on status code
    switch (statusCode) {
      case 400:
        message = "Bad Request";
        break;
      case 401:
        message = "Unauthorized";
        break;
      case 403:
        message = "Forbidden";
        break;
      case 404:
        message = "Not Found";
        break;
      case 500:
        message = "Internal Server Error";
        break;
      default:
        message = "Received invalid status code: $statusCode";
    }
  }

  return ApiErrorModel(
    message: message,
    code: statusCode,
    errors: data?['data'],
  );
}
