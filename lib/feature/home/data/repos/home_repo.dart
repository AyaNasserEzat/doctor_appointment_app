import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/home/data/apis/home_api_service.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';

class HomeRepo {
  HomeApiService homeApiService;
  HomeRepo(this.homeApiService);
  Future<ApiResult<SpecializationResponse>> getAllSspecializations() async {
    try {
      final res = await homeApiService.getAllSspecializations();
      return ApiResult.success(res);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}
